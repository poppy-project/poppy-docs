.. _low_level:

Dynamixel Low-level IO
======================

The low-level API almost directly encapsulates the communication protocol used by dynamixel motors.  More precisely, this class can be used to:

* open/close the communication
* discover motors (ping or scan)
* access the different registers (read and write)

The communication is thread-safe to avoid collision in the communication buses.

All servomotors on a bus must have a unique ID and the same baudrate. 

.. note:: All new servos have ID 1, so when using new motors, it is strongly advise to first plug them one by one and change their IDs

The :py:class:`~pypot.dynamixel.io.io.DxlIO` class is used to handle the communication with a particular port using the version 1 of robotis protocol, allowing to communicate with Dynamixel MX and AX servomotors. 

The :py:class:`~pypot.dynamixel.io.io_320.Dxl320IO` class is used to handle the communication with a particular port using the version 2 of robotis protocol, allowing to communicate with Dynamixel XL servomotors. 

.. note:: A port can only be accessed by a single DxlIO or Dxl320IO instance. Therefore it is impossible to control XL servomotors on the same bus as MX or AX servomotors.

.. note:: Pypot uses the TTL (3-pin) protocol. Therefore, it is not compatible with R Dynamixel servomotors (RX-28, MX-28R...).



Finding ports
--------------------------

The :mod:`~pypot.dynamixel` module offers several useful function to learn the state of your connections:

- :py:class:`~pypot.dynamixel.get_available_ports` discovers the open serial ports. An optionnal argument allows you to ask only for free (not used by a serial connection) ports.
- :py:class:`~pypot.dynamixel.find_port` takes a list of motors IDs and scan the available ports until it finds the motors. 
- :py:class:`~pypot.dynamixel.autodetect_robot` scans all ports and creates a :mod:`~pypot.robot` out of the found motors

::

    import pypot.dynamixel
    
    ports = pypot.dynamixel.get_available_ports()
    if not ports:
        raise IOError('no port found!')
    print('ports found', ports)


.. _open_connection:

Opening/Closing a communication port, scanning motors
------------------------------------------------------------------------------------------------------------

Once you know the name of the port you want to connect to, you can open a connection through a virtual communication port to your device::

    dxl_io = pypot.dynamixel.DxlIO(portName, baudrate=57600)

The portName is a string and the baudrate argument is optionnal and defaults at 1000000.

.. note:: Default baudrate for MX servomotors is 57600, but this should be changed to 1000000 while building the robot.

To detect the motors and find their id you can scan the bus::

    dxl_io.scan()
    >>> [4, 23, 24, 25]

This should produce a list of the ids of the motors that are connected to the bus. 
 
To avoid spending a long time searching all possible values, you can add a list of values to test::
 
    dxl_io.scan([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    >>> [4]

Or, you can use the shorthand::

    dxl_io.scan(range(10))
    >>> [4]


The communication can be closed using the :meth:`~pypot.dynamixel.io.DxlIO.close` method::

    dxl_io.close()

.. note:: The class :class:`~pypot.dynamixel.io.DxlIO` can also be used as a `Context Manager <https://docs.python.org/2/library/contextlib.html>`_ (the :meth:`~pypot.dynamixel.io.DxlIO.close` method will automatically be called at the end).
    For instance::

        with pypot.dynamixel.DxlIO('/dev/ttyUSB0') as dxl_io:
            ...


Registers access
-----------------

.. note:: Appart from the initial parametrization of your motors, you should not use these low level function but instead the equivalent access provided in :ref:`_controller`.

Now you have the id of the connected motors, you can access their registers. Try to find out the present position (in degrees) of the motor with ID 4::

    dxl_io.get_present_position([4])
    >>> (67.8, )

The motors are handled in degrees where 0 is considered the central point of the motor turn. For the MX motors, the end points are -180° and 180°. For the AX and RX motors, these end points are -150° to 150°.

You can also write a goal position (in degrees) to the motor using the following::

    dxl_io.set_goal_position({4: 0})


As you can see on the example above, you should always pass the id parameter as a list. This is intended as getting a value from several motors takes the same time as getting a value from a single motor (thanks to the SYNC_READ instruction). 
Similarly, we use dictionary with pairs of (id, value) to set value to a specific register of motors and benefit from the SYNC_WRITE instruction. The equivalent instructions for several motors would be::

    dxl_io.get_present_position([4, 5, 6])
    >>> (67.8, -12.6, 23.8)
    dxl_io.set_goal_position({4: 0, 5 : 10, 6 : -25})

Registers in Dynamixel servomotors allow you to (among others):
- Read the current position
- Read and write the goal position
- Read the current speed
- Read and write the goal speed
- Read and write the control mode ('joint' for a standard servomotor, 'wheel' for a DC motor equivalent: can turn forever, speed control only)
- Read and write angle limits: if you ask a servo to go beyond a limit, it will stop at the limit
- Read and write the maximum torque (between 0 and 100)

The list of all functions is available in :class:`~pypot.dynamixel.io.DxlIO`. The syntax is the same for all registers: all the getter functions takes a list of ids as argument and the setter takes a dictionary of (id: value) pairs. 


Set parameters for Poppy robots
--------------------------------------------------

This code can be used to initialize a new motor to the right ID, baudrate and return delay. be sure to adapt it to your configuration!

::

    import pypot.dynamixel, time

    ports = pypot.dynamixel.get_available_ports()
    if not ports:
        raise IOError('no port found!')
    print 'ports found', ports

    my_port = ports[0]

    old_id = 1           #Should be 1 if the motor has never been configured\n",
    new_id = 11            #Change this value\n",

    old_baudrate = 57600   #Should be 57600 for new MX-28 or MX-64, 1000000 for new AX612A or XL-320\n",
    new_baudrate = 1000000 #Should be 1000000"

    dxl_io = pypot.dynamixel.DxlIO(my_port, baudrate=old_baudrate)

    found =  dxl_io.scan([old_id])
    if old_id in found:
        dxl_io.set_return_delay_time({old_id : 0})
        dxl_io.change_id({old_id : new_id})
        dxl_io.change_baudrate({new_id : new_baudrate})
        
    else:
        print "motor ",old_id," not found on port ", my_port, " at baudrate ",old_baudrate
        
    dxl_io.close()

    time.sleep(2)

    dxl_io = pypot.dynamixel.DxlIO(my_port, baudrate=new_baudrate)
    found =  dxl_io.scan([new_id])
    if new_id in found:
        print "success"
    else:
        print "motor ",new_id," not found on port ", my_port, " at baudrate ",new_baudrate


%%%%%%%%%%%%%%%%

All motors work sufficiently well with a 12V supply. Some motors can use more than 12V but you must be careful not to connect an 18V supply on a bus that contains motors that can only use 12V! 
Connect this 12V SMPS supply (switch mode power supply) to a Robotis SMPS2Dynamixel device which regulates the voltage coming from the SMPS. Connect your controller device and a single motor to this SMPS2Dynamixel.

%%%%%%%%%%%%%%%%%%%