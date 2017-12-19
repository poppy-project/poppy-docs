# Motor configuration

Ergo Jr is made of 6 XL-320 motors from [Robotis](http://support.robotis.com/en/product/dynamixel/xl-series/xl-320.htm). Each of this servomotor embeds an electronic board allowing it to receive different kind of orders (about position, speed, torque...) and to communicate with other servos. Therefore, you can chain up several of this servomotors and command them all from one end of the chain: each servomotor will pass the orders to the next one.

<img src="img/assembly/xl_320.jpg" alt="XL320" height="150">

Yet, in order for the motors to be connected and identified on the same bus (same line), they must have a unique ID. Out of the factory they all set to the same ID (1). In this section, we will give you details on how you can set a new and unique ID to each of your motors.

We recommend to configure motors in parallel of the hardware assembly. Meaning, that before assembling a new motor, you first configure it, then assemble to the rest of your robot. In the step-by-step assembly procedure, we will point out each time you need to configure a new motor.

## Turn on the robot

If you use Windows or Linux (not needed for Mac OSX) you'll first **need to install Bonjour/Zeroconf ([download link for Windows](https://support.apple.com/kb/DL999))** to be able to connect to the robot.
Look at [Bonjour/Zeroconf protocol](../../installation/install-zeroconf.md) dedicated page for more details.

Before configuring the motors, you'll have to **turn on the robot:**

- plug the Ethernet wire from the robot to your computer (or your router/box if you want to use an existing network)
- plug the DC power on the pixl board

You can now go to your robot web home page on [http://poppy.local](http://poppy.local).

If Bonjour is not present, you will have an error message like the one below. If Bonjour is installed and the issue still present, please re-install it.
![Page doesn't exist](img/IHM/webpage_not_available.jpg)

## Configuring motors one at a time

As explained above, all motors have the same ID by default. **Only one motor at a time should be connected to the data bus when you configure them.** Otherwise, it will not work as all motors connected will think that the order sent on the line is intended for them, they will all try to answer resulting in a big mess.

Your electronic setup when configuring a motor should look like this:

* a Raspberry Pi
* a Pixl shield on top and the AC plugged
* a wire from the shield to the motor you want to configure
* an Ethernet cable going from the Raspberry Pi to your computer or your router

![XL-320 configuration ; one motor at a time](img/motor_one_by_one.jpg).

### Command-line utility
Robots come with a command line utility `poppy-configure` ; to use it you'll need to open a terminal on your Raspberry Pi.

To do so, first, **open the page http://poppy.local in a web browser**.


If everything goes well, you should see the Poppy home page:

![Poppy home page](img/IHM/home_page_jupyter.png)

Click on the **"Jupyter — Python"** link and after, select on the right "New" and "Terminal".
<img src="img/IHM/jupyter_new_terminal.png" alt="Jupyter terminal" height="300">

You have now access to the Terminal:

![terminal for configuration](img/IHM/terminal_for_configuration.PNG)


Once the terminal is open, re-copy the command below and press enter to execute it.

```bash
poppy-configure ergo-jr m1
```
After a few seconds you will see the following message:
![terminal for configuration 2](img/IHM/poppy-configure-terminal-output.png)


You have now configured the motor m1 of your robot, congratulation !

Once configured and that you see the message indicating that everything went well, you can unplug the motor (the Raspberry Pi can stay powered). The configuration is stored in the motor internal memory (eprom).


> **Info** Poppy Ergo Jr motors are named m1, m2, m3, m4, m5, m6. To configure the others motors, you have to change m1 by the name of the motor you want to configure in the command above.

<img src="img/assembly/motors.png" alt="Motors list" height="300">
