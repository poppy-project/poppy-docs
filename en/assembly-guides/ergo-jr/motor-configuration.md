# Motor configuration

Ergo Jr is made of 6 XL-320 motors from [Robotis](http://support.robotis.com/en/product/dynamixel/xl-series/xl-320.htm). Each of this servomotor embeds an electronic board allowing it to receive different kind of orders (about position, speed, torque...) and to communicate with other servos. Therefore, you can chain up several of this servomotors and command them all from one end of the chain: each servomotor will pass the orders to the next one.

<img src="img/assembly/xl_320.jpg" alt="XL320" height="150">

Yet, in order for the motors to be connected and identified on the same bus (same line), they must have a unique ID. Out of the factory they all set to the same ID (1). In this section, we will give you details on how you can set a new and unique ID to each of your motors.

We recommend to configure motors in parallel of the hardware assembly. Meaning, that before assembling a new motor, you first configure it, then assemble to the rest of your robot. In the step-by-step assembly procedure, we will point out each time you need to configure a new motor.

## Turn on the robot

If you use Windows (not needed or Mac OSX) you'll first **need to install Bonjour/Zeroconf ([download link for Windows](https://support.apple.com/kb/DL999))** or **avahi** to be able to connect to the robot.
Look at [Bonjour/Zeroconf protocol](../../installation/install-zeroconf.md) dedicated page for more details.

**Turn on the robot**, with or without connected motors:

- plug the Ethernet cable (RJ45) from the robot to your Internet box or router. Note: it is also possible to connect the cable directly to your computer bu your OS might require additionnal configuration so the first solution is preferred. 
- plug the DC power on the pixl board

**Note:** NEVER plug another power supply (such as a micro-USB cable) cable while the DC power is connected.

Your robot boots up... check that the green LED **ACT** of the Raspberry Pi flickers during about 30 seconds. If it doesn't, then your SD card might be missing or faulty.
From your computer, you can now open a web browser (Firefox, Chrome, Edge, ...) and load the following URL in the address bar; [http://poppy.local](http://poppy.local).

The robot's first page should load. If it does not and shows an error like below, check that you entered the **http://** prefix, and check that Bonjour is installed if you are running Windows. Otherwise your network might be misconfigured: try with another router or try a direct connection of the robot to your computer.

![Page doesn't exist](img/IHM/webpage_not_available.jpg)

## Configuring motors one at a time

As explained above, all motors have the same ID by default. **Only one motor at a time should be connected to the data bus when you configure them.** Otherwise, it will not work as all motors connected will think that the order sent on the line is intended for them, they will all try to answer resulting in a big mess.

Your electronic setup when configuring a motor should look like this:

* a Raspberry Pi
* a Pixl shield on top and the AC plugged
* a wire from the shield to the motor you want to configure
* an Ethernet cable going from the Raspberry Pi to your computer or your router

![XL-320 configuration ; one motor at a time](img/motor_one_by_one.jpg).

## Configure your robot

At first boot, your robot guides you for its initial configuration. Just follow the proposed steps. One of the most important step is the motor configuration.

During this step, a single motor must be connected to the Pixl board so that it is configured with its right motor name **m1, m2, m3, m4, m5 or m6** as shown on the image hereunder:

<img src="img/assembly/motors.png" alt="Motors list" height="300">

Each motor must be plugged **alone** and configured one atfer the other by selecting its name and clicking the button **Configure**. Factory motors are 100% identical, this is your role to pay attention to the name you attribute to each motor so that you mount it at the right location.

During the motor configuration, you must have plugged **only** the folliwing elements:
* the Raspberry Pi
* the Pixl board with its DC power supply
* Only 1 motor cable (black cable with 3 wires) coming from the Pixl board to the unique motor to be configured
* the Ethernet cable connecting your Raspberry Pi to the network

![XL-320 configuration ; one motor at a time](img/motor_one_by_one.jpg).

After configuring each one of the 6 motors, you can plug them normally with motor cable, all chained one to the other. The, click on the proposed button to test your robot by make it dance! If the dance does not start, restart the individual motor configuration ; help yourself with the potential error messages that say what is going on. 

At the end of the first connection, you reach the home page of your robot. Have fun!