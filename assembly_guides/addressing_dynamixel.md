
# Addressing Dynamixel motors


By default, every Dynamixel servomotor has its ID set to 1. To use
several servomotors in a serial way, each of them must have a unique ID.

## Using your robot's main board and Ipython notebooks

This is the prefered solution, but it implies that you have a ready-to-use Odroid or Raspberry Pi board, connected to the network, with ipython notebook server started (or a webapp to start the server).

Connect to your robot's jupyter server by entering the URL poppy.local:8888

## Installing the driver for USB2AX


There are two devices allowing you to connect your Dynamixel bus to your computer: USB2Dynamixel and USB2AX.

The first one is created by Robotis (the conceptors of the Dynamixel devices) and can be used to control RS-232(serial), RS-485 (4-pin) and TTL (3-pin) busses.
Be sure to set the selector in the position corresponding to the protocol you want to use. [More info](http://support.robotis.com/en/product/auxdevice/interface/usb2dxl_manual.htm)

![image](../images/usb2dynamixel.jpg)

USB2AX is a miniaturized version of the USB2Dynamixel able to control only TTL busses. We are using USB2AX to the rest of the doc.

![image](../images/USB2AX.jpg)

* Due to differences in sensibilities, new MX-28 and MX-64 servos communicate at a 57600 baudrate with USB2AX and 57142 for USB2Dynamixel.*

USB2AX is the device that will connect the Poppy Humanoid robot’s head
to the Dynamixel servomotors. It can also be used to control the
servomotors directly from your computer and that’s what we will do to
address the motors.

On Linux, no installation is needed, but you must add yourself in the group which own the USB serial ports. It is "dialout" or "uucp" depending on your distribution:

    sudo addgroup $USER dialout
    sudo addgroup $USER uucp

Otherwise, the driver is available
[here](http://www.xevelabs.com/doku.php?id=product:usb2ax:quickstart).

Don’t forget to power up your motors (using a SMPS2Dynamixel) otherwise
they won’t be detected !

## Installing the scanning software

Use one of the two following software to access the Dynamixel
servomotors registers:

-   [Herborist](http://poppy-project.github.io/pypot/herborist.html):
    tool created by the Poppy Project team.

-   [Dynamixel
    Wizard](http://support.robotis.com/en/software/roboplus/dynamixel_monitor/quickstart/dynamixel_monitor_connection.htm):
    windows-only tool provided by Robotis.

Herborist comes with the Pypot library, but needs the additional library
PyQt4 for graphical interface (sudo may not be needed).

    sudo apt-get install python-qt4 python-numpy python-scipy python-pip
    sudo pip install pypot


It should then be directly accessible in a terminal:

    herborist

![image](../images/herborist.png)

Connect each motor **one by one** to the USB2AX and use the ’scan’
button in Herborist or Dynamixel Wizard to detect it. If it’s a new
motor, it should have ID 1 and baudrate 57600bps, apart from AX-12A
servos who already have a 1000000 baudrate.

You have to set:

-   ID corresponding to the naming convention

-   Baudrate to 1 000 000 bps

-   Return delay time to 0 ms instead of 0.5 ms

In Herborist, don’t forget to click on the ’Update EEPROM’ button so the
changes are taken in account.

## Naming conventions

If you want your software object to correspond to your robot
without having to modify the configuration file, you should stick to the
robot naming and addressing convention, described in the assembly doc and in each robot's library. This will ensure
that, in your code, when you use a motor’s name, you will really send
orders to the corresponding physical motor.
