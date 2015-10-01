.. _robot:

The Robot object and the controllers
===========================

Using the robot abstraction
---------------------------

While the :ref:`low_level` provides access to all functionalities of the dynamixel motors, it forces you to have one communication call for function call, which can take a non-negligible amount of time. 
In particular, most programs will need to have a really fast read/write synchronization loop, where we typically read all motor position, speed, load and set new values, 
while in parallel we would like to have higher level code that computes those new values.

This is pretty much what the robot abstraction is doing for you. More precisely, through the use of the class :class:`~pypot.robot.robot.Robot` you can:

* automatically initialize all connections (make transparent the use of multiple USB2serial connections),
* define :attr:`~pypot.dynamixel.motor.DxlMotor.offset` and :attr:`~pypot.dynamixel.motor.DxlMotor.direct` attributes   for motors,
* automatically define accessor for motors and their most frequently used registers (such as :attr:`~pypot.dynamixel.motor.DxlMotor.goal_position`, :attr:`~pypot.dynamixel.motor.DxlMotor.present_speed`, :attr:`~pypot.dynamixel.motor.DxlMotor.present_load`, :attr:`~pypot.dynamixel.motor.DxlMXMotor.pid`, :attr:`~pypot.dynamixel.motor.DxlMotor.compliant`),
* define read/write synchronization loop that will run in background.


We will first see how to define your robot thanks to the writing of a :ref:`configuration <config_file>`, then we will describe how to set up :ref:`synchronization loops <sync_loop>`. Finally, we will show how to easily :ref:`control this robot through asynchronous commands <control_robot>`.



.. _config_file:

Create the robot object
-------------------------

The configuration file
+++++++++++++++++++

See :ref:`_quickstart-configfile` for a quick intro on how to use the configuration files.

The configuration, described as a Python dictionary, contains several important features that help build both your robot and the software to manage you robot.  The configuration can also be loaded from any file that can be loaded as a dict (e.g. a JSON file).

The important fields are:


#. **controllers**: This key holds the information pertaining to a controller and all the items connected to its bus. You can have a single or multiple :class:`~pypot.dynamixel.controller.DxlController`.
    You must specify the attached motors (or motor groups) and port that the device is connected to, or "auto". When loading the configuration, pypot will automatically try to find the port with the corresponding attached motor ids.
    You also have to specify the protocol (1 or 2) and you you want to use the SYNC_READ instruction (see below).
    ::

        my_config['controllers'] = {}
        my_config['controllers']['upper_body_controler'] = {
            'port': '/dev/ttyUSB0',
            'sync_read': False,
            'attached_motors': ['torso', 'head', 'arms'],
            'protocol': 1,
        }
        

#. **motorgroups**: These defines the different motors group corresponding to the structure of your robot. It will automatically create an alias for the group. Groups can be nested, i.e. a group can be included inside another group, as in the example below::

        my_config['motorgroups'] = {
            'torso': ['arms', 'head_x', 'head_y'],
            'arms': ['left_arm', 'right_arm'],
            'left_arm': ['l_shoulder_x', 'l_shoulder_y', 'l_elbow'],
            'right_arm': ['r_shoulder_x', 'r_shoulder_y', 'r_elbow']
        }

#. **motors**: This is a description of all the custom setup values for each motor::

        my_config['motors'] = {}
        my_config['motors']['l_hip_y'] = {
            'id': 11,
            'type': 'MX-28',
            'orientation': 'direct',
            'offset': 0.0,
            'angle_limit': (-90.0, 90.0),
        }

Mandatory information for each motor is:

- Motor name and ID
- Motor type: 'MX-28', 'MX-64', 'AX-12A' or 'XL-320'. This will change which attributes are available (e.g. compliance margin versus pid gains).
- Limit angles
- Orientation: describes whether the motor will act in an anti-clockwise fashion (direct) or clockwise (indirect) when asked to increase the angle.
- Offset: describe the offset between physical zero of the servo and 'software zero', the position of the motor when requested to go at angle 0.


In the source of :class:`~pypot.robot.config`, you can find the configuration dictionnary of a Poppy Ergo Jr robot.


Use the configuration
+++++++++++++++++++

To create a :class:`~pypot.robot.robot.Robot` object from a Python dictionnary, use the :func:`~pypot.robot.config.from_config` function function::

    import pypot.robot

    robot = pypot.robot.from_config(my_config)
    
    
You can also create a :class:`~pypot.robot.robot.Robot` by detecting the available Dynamixel servomotors::

    from pypot.dynamixel import autodetect_robot

    my_robot = autodetect_robot()

    

To save your configuration as a json file, use the following code::

    import json
    
    config = my_robot.to_config()
    
    with open('myconfig.json', 'w') as f:
        json.dump(config, f, indent=2)

If you have your configuration in a json file, here is how to open it::

    import json
    import pypot.robot

    ergo = pypot.robot.from_json('ergo.json')
    
While having the configuration as a file is convenient to share the same config on multiple machine, it also slows the creation of the :class:`~pypot.robot.robot.Robot`.


.. _sync_loop:

Dynamixel controller and Synchronization Loop
---------------------------------------------

The :class:`~pypot.robot.robot.Robot` held instances of :class:`~pypot.dynamixel.motor.DxlMotor`. Each of these instances represents a real motor of your physical robot. 
The attributes of those "software" motors are automatically synchronized with the real "hardware" motors. 
In order to do that, the :class:`~pypot.robot.robot.Robot` class uses a :class:`~pypot.dynamixel.controller.DxlController` which defines synchronization loops that will read/write the registers of dynamixel motors at a predefined frequency.

.. warning:: The synchronization loops will try to run at the defined frequency, however don't forget that you are limited by the bus bandwidth! For instance, depending on your robot you will not be able to read/write the position of all motors at 100Hz. Moreover, the loops are implemented as python thread and we can thus not guarantee the exact frequency of the loop.

By default the class :class:`~pypot.robot.robot.Robot` uses a particular controller :class:`~pypot.dynamixel.controller.BaseDxlController` which already defines synchronization loops. More precisely, this controller:

* reads the present position, speed, load at 50Hz,
* writes the goal position, moving speed and torque limit at 50Hz,
* writes the pid or compliance margin/slope (depending on the type of motor) at 10Hz,
* reads the present temperature and voltage at 1Hz.

So, in most case you should not have to worry about synchronization loop and it should directly work. 

The synchronization loops are automatically started when instantiating your robot if you set the sync_read parameter of your controller to True. Otherwise, start it with the method :meth:`~pypot.robot.robot.Robot.start_sync`.
You can also stop the synchronization if needed (see the :meth:`~pypot.robot.robot.Robot.stop_sync` method).


.. note:: With the current version of pypot, you can not yet indicate in the configuration which subclasses of :class:`~pypot.dynamixel.controller.DxlController` you want to use. If you want to use your own controller, you should either modify the config parser, modify the :class:`~pypot.dynamixel.controller.BaseDxlController` class or directly instantiate the :class:`~pypot.robot.robot.Robot` class.

.. warning:: You should never set values to motors when the synchronization is not running.

Now you have a robot that is reading and writing values to each motor in an infinite loop. Whenever you access these values, you are accessing only their most recent versions that have been read at the frequency of the loop. This automatically make the synchronization loop run in background. You do not need to wait the answer of a read command to access data (this can take some time) so that algorithms with heavy computation do not encounter a bottleneck when values from motors must be known.

Now you are ready to create some behaviors for your robot.


.. _control_robot:

Controlling your robot
----------------------

Robot overview
+++++++++++++++++++++++

The main fields of the :class:`~pypot.robot.robot.Robot` are:

-   motors: list of :class:`~pypot.dynamixel.motor.DxlMotor`. Example: list all motors::

        for m in robot.motors:
            print m.name
    
    Each motor name is a field of the robot, so you can control a motor directly::
    
        print robot.head_z.present_position
        
    Each motor group is also a field::
    
        for m in robot.head:
            print m.name  
        
-   compliant: This is a shortcut to set all motors compliance to the same value in one command::

        robot.compliant = True
        
        
-   primitives: You can attach :ref:`primitives <primitives>` to a robot and this field lists them.
-   active_primitives: from above primitives, which are currently running
-   sensors: list of available sensors, work in progress

Some useful functions of the  :class:`~pypot.robot.robot.Robot` class:

- :meth:`~pypot.robot.robot.Robot.power_up` to set maximum torque and remove compliance.


Synchronized moves
++++++++++++++++++++++++++++++++++++++++++

The :class:`~pypot.dynamixel.motor.DxlMotor` allows you to control motors in position and speed, but, at the :class:`~pypot.dynamixel.robot.Robot` level, you can give orders to a set of motors to make a synchronized move using the :meth:`~pypot.robot.robot.Robot.goto_position` function.

This is especially useful for choregraphies, because the :meth:`~pypot.robot.robot.Robot.goto_position` function ensures that all motors smoothly reach their final positions at the same time, while using the goal_position field will lead all motors to go to the same speed, without time synchronization.

For example to move the head to angles (0, 20.) degrees in 3 seconds::

    robot.goto_position({"head_z":0. , "head_y":20}, 3)

By default, this function return immediatelly and is cancelled if another one is run later, even if the 3 seconds are not over.

You can set the optionnal *wait* parameter to True to make this function blocking, therefore the next line in the script will execute only when the 3 seconds are over.

The other optionnal parameter is *control*. You can specify 'dummy' or 'minijerk' (default) to define which algorithm is used in used in background to bring the motor to the desired position.

'dummy' is a simple controller, where you divide the angle to travel by the time and you set the goal speed to this value. As the motor can't go from thois speed to 0 at arrival in no time, a slight overshoot can happen.
The 'minijerk' controller has a more complex algorithm to slow down before and arrive on time without overshoot.

::

    robot.goto_position({"head_z":0. , "head_y":20}, 3, control='dummy', wait=True)



Closing the robot
-----------------

To make sure that everything gets cleaned correctly after you are done using your :class:`~pypot.robot.robot.Robot`, you should always call the :meth:`~pypot.robot.robot.Robot.close` method. Doing so will ensure that all the controllers attached to this robot, and their associated dynamixel serial connection, are correctly stopped and cleaned.

It is advised to use the :func:`contextlib.closing` decorator to make sure that the close function of your robot is always called whatever happened inside your code::

  from contextlib import closing

  import pypot.robot

  # The closing decorator make sure that the close function will be called
  # on the object passed as argument when the with block is exited.

  with closing(pypot.robot.from_json('myconfig.json')) as my_robot:
      # do stuff without having to make sure not to forget to close my_robot!
      pass



.. note:: Note calling the :meth:`~pypot.robot.robot.Robot.close` method on a :class:`~pypot.robot.robot.Robot` can prevent you from opening it again without terminating your current Python session. Indeed, as the destruction of object is handled by the garbage collector, there is no mechanism which guarantee that we can automatically clean it when destroyed.

When closing the robot, we also send a stop signal to all the primitives running and wait for them to terminate. See section :ref:`my_prim` for details on what we call primitives.

.. warning:: You should be careful that all your primitives correctly respond to the stop signal. Indeed, having a blocking primitive will prevent the :meth:`~pypot.robot.robot.Robot.close` method to terminate (please refer to :ref:`start_prim` for details).

