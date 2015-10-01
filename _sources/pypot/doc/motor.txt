.. _motor:

The Motor object
===============


Overview
-----------------------

The  :class:`~pypot.robot.robot.Robot` class contains a list of  :class:`~pypot.dynamixel.motor.DxlMotor`, each :class:`~pypot.dynamixel.motor.DxlMotor` being linked to a physical Dynamixel motor. 


Registers
+++++++++++++++

This class provides access to (see :attr:`~pypot.dynamixel.motor.DxlMotor.registers` for an exhaustive list):
    * id: motor id 
    * motor name
    * motor model
    * present position/speed/load
    * goal position/speed/load
    * compliant
    * motor orientation and offset
    * angle limit
    * temperature
    * voltage
    
Temperature and load can give you an idea of how much effort a motor produces::
    
    for m in robot.motors:
        print "motor ",m.name, "(",m.model,"), id: ",m.id
        print 'temperature: ',m.temperature
        print "load: ", m.load
        print "---"

Torque and compliance
++++++++++++++

A motor with compliance will not exert any torque. You can move it by hand. Removing compliance will cause the motor to exert torque and therefore move to get to its goal position. The compliance can be set for each motor individually::

    robot.head_z.compliant = False
    
or can be set at  :ref:`robot level <robot>`.

You can set the compliance mode to 'safe' (as opposed to 'dummy') to have the robot set compliance at angle limits, preventing you to move it outside of the authorized range. It also prevents the brutal moves when putting back compliance and the robot wants to go back inside its angle limits.

::

    print robot.head_z.angle_limit
    robot.head_z.compliant_behavior('safe')
    robot.head_z.compliant = True
    #now try moving the head with your hands beyond the angle limits


You can also change the maximal torque that the robot can use. Use a value between 0 (no torque) and 100 (max torque). The resulting maximal torque depends onthe model of teh robot::

    robot.head_z.max_torque = 20
    
Reducing the maximal torque makes your robot less powerful and therefore less harmfull and adds elasticity to the joints: if you apply a force on it,it moves because it does not have enough torque to resist, but it goes back to its goal position when you stop applying the force.


            
Controlling motors
--------------------------------

Controlling in position
+++++++++++++++++++++++

Dynamixel servomotors will use their internal controller to reach and stay at the angle defined in the goal_position register (in degree). 
If this angle isn't between :attr:`~pypot.dynamixel.motor.DxlMotor.lower_limit` and :attr:`~pypot.dynamixel.motor.DxlMotor.upper_limit`, the goal angle will automatically be taken back into the limits::

    for m in robot.motors:
        m.compliant = False
        m.goal_position = 0
        
    time.sleep(2)

    for m in robot.motors:
        print "position: ", m.present_position, "(limits: ",m.angle_limit, ")"



Controlling in speed
++++++++++++++++++++

You can also control your robot in speed. Set the :attr:`~pypot.dynamixel.motor.DxlMotor.goal_speed` attribute to the desired value in degree per seconds.
This automatically sets the :attr:`~pypot.dynamixel.motor.DxlMotor.goal_position` to the maximal or minimal value (depending on the sign of the speed).

The motor will remain at the given speed until it gets a new order or it reaches its angle limit.

Example of robot making 'yes' with its head::

    goal = 20
    
    t_init = time.time()
    
    while time.time() - t_init < 20:
    
        if abs(robot.head_y.present_position) > abs(goal):
            goal = -goal
    
        speed = 0.1*(goal - robot.head_y.present_position)
        robot.head_y.goal_speed = speed
        
        time.sleep(0.1)
    


.. note:: You could also use the wheel mode settings where you can directly change the :attr:`~pypot.dynamixel.motor.DxlMotor.moving_speed`. Nevertheless, while the motor will turn infinitely with the wheel mode, here with the :attr:`~pypot.dynamixel.motor.DxlMotor.goal_speed` the motor will still respect the angle limits.

.. warning:: If you set both :attr:`~pypot.dynamixel.motor.DxlMotor.goal_speed` and :attr:`~pypot.dynamixel.motor.DxlMotor.goal_position` only the last command will be executed. Unless you know what you are doing, you should avoid to mix these both approaches.


The :meth:`~pypot.dynamixel.motor.goto_position` function
++++++++++++++++++++++++++++++++++++++++++

If you want a servo to go to a certain position in a certain time (for synchronization reasons...), use the :meth:`~pypot.dynamixel.motor.goto_position` function. It take two mandatory arguments: position to reach (in degrees) and the duration::

    robot.head_z.goto_position(20, 3)

To synchronize several motors, have a look at the :meth:`~pypot.robot.robot.Robot.goto_position` at robot level.

By default, this function return immediatelly and is cancelled if another one is run later, even if the 3 seconds are not over.

You can set the optionnal *wait* parameter to True to make this function blocking, therefore the next line in the script will execute only when the 3 seconds are over.

The other optionnal parameter is *control*. You can specify 'dummy' or 'minijerk' (default) to define which algorithm is used in used in background to bring the motor to the desired position.

'dummy' is a simple controller, where you divide the angle to travel by the time and you set the goal speed to this value. As the motor can't go from thois speed to 0 at arrival in no time, a slight overshoot can happen.
The 'minijerk' controller has a more complex algorithm to slow down before and arrive on time without overshoot.

::

    robot.head_z.goto_position(20, 3, control='dummy', wait=True)


TODO: sensors doc, but work in progress