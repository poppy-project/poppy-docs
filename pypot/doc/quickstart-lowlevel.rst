.. _quickstart-lowlevel:

QuickStart: discover and communicate with Dynamixel servomotors
============================================

Assume you have a Dynamixel servomotor connected to the computer, using a USB2AX or a USB2Dynamixel.
The servomotor has to be powered by a SMPS2Dynamixel (or any other external power source), because the USB port does not deliver enough current.

Ports scan
---------------------

First we are going to discover all serial ports open on your computer.
These ports (called 'COM' in Windows, '/dev/tty' in Linux) are used by serial devices (mainly USB devices usingserial communication), like a USB2AX, a Razor board...

::

    import pypot.dynamixel

    ports = pypot.dynamixel.get_available_ports()
    
    if not ports:
        raise IOError('no port found!')
        
    print 'ports found', ports
    
We start by importing the *dynamixel* (low-level) part of pypot. Then we use the *get_available_ports* function to create a list of all ports names.

Then we check if there is something in the port variable and raise an error if it's not the case.

The last line prints 'ports found' and the list of ports, which should result in something like (for Linux):

::

    > ports found ["/dev/ttyACM0", "/dev/ttyUSB0"]

ID scan
------------------

We use only one USB port, but we can plug several Dynamixel servomotors in serial. To be able to communicate with a given servo, we need to know its ID.

**Never connect two servomotors with the same ID on the same bus !**

We also have to know its baudrate (the frequency at which it talks) and its protocol (version 1 for MX and AX servos, version 2 for XL servos).

Its baudrate 57600 for a MX, 1000000 for a AX or XL and its ID should be 1.

Let start by defining the baudrate and protocol values (change them according to your setup):

::

    using_XL320 = False
    my_baudrate = 1000000

Then we scan the ports: for each port, for the 60 first IDs, we ask if a servomotor has this ID on this port (with the previously defined protocol and baudrate).

The IDs can theoretically go up to 254, but IDs above 60 are rarely used (ans the scanning takes some time).

::

    for port in ports:
        print port
        try:
            if using_XL320:
                dxl_io = pypot.dynamixel.Dxl320IO(port, baudrate=my_baudrate)
            else:
                dxl_io = pypot.dynamixel.DxlIO(port, baudrate=my_baudrate)
            
            print "scanning"
            found =  dxl_io.scan(range(60))
            print found
            dxl_io.close()
        except Exception, e:
            print e
            
You should get something like:

::

    /dev/ttyACM0
    scanning
    [11, 12, 13, 14, 15]
    /dev/ttyUSB0
    scanning
    []
    
here, there are 5 servomotors connected on the /dev/ttyACM0 port and none one the '/dev/ttyUSB0' one.

Reading and writing in registers
----------------------------------------------------------

Dynamixel servomotors are called 'smart servos', because they are not controlled through a PWM signal as simple DC motors or servomotors, but they contain an electronical board with a memory.
You write the goal position in a given register and the board controls the servomotor to reach the position. 
You can also write in the speed or max_torque registers. The full protocol is available `on Robotis website <http://support.robotis.com/en/>`_ 

Let read the position of a servomotor and write a new goal position:

::

    import pypot.dynamixel
    import time
    
    my_port = "/dev/ttyACM0" #Modify to fit your setup!
    my_baudrate = 1000000   #Modify to fit your setup!
    my_id = 11                        #Modify to fit your setup!
    
    #start serial communication
    dxl_io = pypot.dynamixel.DxlIO(my_port, baudrate=my_baudrate)
    
    #get position of servo my_id
    pos = dxl_io.get_present_position([my_id]) 
    print pos
    
    #allow the servomotor to move
    dxl_io.enable_torque([my_id]) 
    
    #set position of servo m_id to 90 degrees
    dxl_io.set_goal_position({my_id: 90})
    
    #wait a bit
    time.sleep(2)
    
    #put compliance back to the robot
    dxl_io.disable_torque([my_id]) 
    
    #end serial communication
    dxl_io.close()
    
See :mod:`pypot.dynamixel.io` here to find all available registers functions. Remember that it is always easier to use the :ref:`robot <robot>` and :ref:`motor <motor>` abstractions.

    