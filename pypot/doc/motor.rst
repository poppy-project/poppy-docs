.. _motor:

The Motor object
================


Overview
-----------------------


Usage examples
--------------------------------

Controlling in position
+++++++++++++++++++++++

As shown in the examples above, the robot class let you directly access the different motors. For instance, let's assume we are working with an Ergo-robot, you could then write::

    import pypot.robot

    from pypot.robot.config import ergo_robot_config

    robot = pypot.robot.from_config(ergo_robot_config)

    # Note that all these calls will return immediately,
    # and the orders will not be directly sent
    # (they will be sent during the next write loop iteration).
    for m in ergo_robot.base:
        m.compliant = False
        m.goal_position = 0

    # This will return the last synchronized value
    print(ergo_robot.base_pan.present_position)

For a complete list of all the attributes that you can access, you should refer to the :class:`~pypot.dynamixel.motor.DxlMotor` API.

As an example of what you can easily do with the Robot API, we are going to write a simple program that will make a robot with two motors move with sinusoidal motions. More precisely, we will apply a sinusoid to one motor and the other one will read the value of the first motor and use it as its own goal position. We will still use an Ergo-robot as example::

    import time
    import numpy

    import pypot.robot

    from pypot.robot.config import ergo_robot_config

    amp = 30
    freq = 0.5

    robot = pypot.robot.from_config(ergo_robot_config)

    # Put the robot in its initial position
    for m in ergo_robot.motors: # Note that we always provide an alias for all motors.
        m.compliant = False
        m.goal_position = 0

    # Wait for the robot to actually reach the base position.
    time.sleep(2)

    # Do the sinusoidal motions for 10 seconds
    t0 = time.time()

    while True:
        t = time.time() - t0

        if t > 10:
            break

        pos = amp * numpy.sin(2 * numpy.pi * freq * t)

        ergo_robot.base_pan.goal_position = pos

        # In order to make the other sinus more visible,
        # we apply it with an opposite phase and we increase the amplitude.
        ergo_robot.head_pan.goal_position = -1.5 * ergo_robot.base_pan.present_position

        # We want to run this loop at 50Hz.
        time.sleep(0.02)


Controlling in speed
++++++++++++++++++++

Thanks to the :attr:`~pypot.dynamixel.motor.DxlMotor.goal_speed` property you can also control your robot in speed. More precisely, by setting :attr:`~pypot.dynamixel.motor.DxlMotor.goal_speed` you will change the :attr:`~pypot.dynamixel.motor.DxlMotor.moving_speed` of your motor but you will also automatically change the :attr:`~pypot.dynamixel.motor.DxlMotor.goal_position` that will be set to the angle limit in the desired direction.


.. note:: You could also use the wheel mode settings where you can directly change the :attr:`~pypot.dynamixel.motor.DxlMotor.moving_speed`. Nevertheless, while the motor will turn infinitely with the wheel mode, here with the :attr:`~pypot.dynamixel.motor.DxlMotor.goal_speed` the motor will still respect the angle limits.


As an example, you could write::

    t = numpy.arange(0, 10, 0.01)
    speeds = amp * numpy.cos(2 * numpy.pi * freq * t)

    positions = []

    for s in speeds:
        ergo_robot.head_pan.goal_speed = s
        positions.append(ergo_robot.head_pan.present_position)
        time.sleep(0.05)

    # By applying a cosinus on the speed
    # You observe a sinusoid on the position
    plot(positions)

.. warning:: If you set both :attr:`~pypot.dynamixel.motor.DxlMotor.goal_speed` and :attr:`~pypot.dynamixel.motor.DxlMotor.goal_position` only the last command will be executed. Unless you know what you are doing, you should avoid to mix these both approaches.


The :meth:`~pypot.robot.robot.Robot.goto_position` function
++++++++++++++++++++++++++++++++++++++++++

The :class:`~pypot.dynamixel.motor.DxlMotor` allows you to control motors in position and speed, but, at the :class:`~pypot.dynamixel.robot.Robot` level, you can give orders to a set of motors and 
be assured that they will be treated simultaneously. 

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

