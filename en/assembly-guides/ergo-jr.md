## Mechanical Assembly

### General advices and warnings

* You can assemble all the rivets before the construction. You have to put the edges of the first part in the second part holes. You will thus be able to remove them easily if needed.

![OLLO Rivet Assembly](../img/ergo-jr/assembly/ollo_rivet.png)

* Use the OLLO Tool for the rivets, it is really convenient. This tool allows to put and remove the rivets easily.

![OLLO Tool](../img/ergo-jr/assembly/ollo-tool.jpg)

* Do not forget to put wires between motors while building the robot! Each motor, except the last, must have two wires; one connected to the previous motor and the other to the next (no favorite side).
* If you want, there are slots for getting the most beautifully wires and avoid damaging them.

![image](../img/ergo-jr/assembly/xl320_gap.jpg)

* **Always align the horn with the motor before assembling them!** Otherwise your Poppy Ergo Jr will look all weird.

![Align Horn](../img/ergo-jr/assembly/align-horn.png)

### Step 1

First, configure one XL-320 motor as "m1". To do that, connect it to your Raspberry-Pi as in the image below:

![XL320 configuration](../img/ergo-jr/motorconfig.jpg)

Then, from the [assembly notebook](#TODO), you should run the cell #TODO. If you prefer the geek way, you can run from the Raspberry-Pi terminal command line:

```bash
poppy-ergo-jr motorconfig m1
```

When it is done and everything went well, disconnect it from your Raspberry-Pi.

Then, connect the longest cable to this motor. Connect a regular cable to the other side.

![Another Step](../img/ergo-jr/assembly/step-1-1.jpg)

![Another Step](../img/ergo-jr/assembly/step-1-2.jpg)

### Step 2

Mount the motor on the 3D printed base. The wires should go out from the back.

![Another Step](../img/ergo-jr/assembly/step-2.jpg)

### Step 3

Mount the U_horn_to_horn part.

![Another Step](../img/ergo-jr/assembly/step-3-1.jpg)

![Another Step](../img/ergo-jr/assembly/step-3-2.jpg)

### Step 4

Configure another motor. This time its name is "m2". It corresponds to the cell TODO of the notebook.

Mount it on top of the construction.

![Another Step](../img/ergo-jr/assembly/step-4-1.jpg)

You have to put a OLLO Pulley inside and for this you should use the bigger rivet. Bonus, you can watch this step in [slow motion](https://vimeo.com/125704291). Do not forget the cable!

![Another Step](../img/ergo-jr/assembly/step-4-2.jpg)


### Step 5

Mount both shift_one_sides on the motors.

![Another Step](../img/ergo-jr/assembly/step-5.jpg)

### Step 6

Configure a third motor: "m3" (cell TODO).

Add it on top. Make sure to have the pulley on the same side.

![Another Step](../img/ergo-jr/assembly/step-6.jpg)

### Step 7

Configure the fourth motor: "m4" (cell TODO).

Mount the U_side_to_horn on it.

![Another Step](../img/ergo-jr/assembly/step-7.jpg)

### Step 8

Mount it on top of the previous assembly. The nose of the motor should be on the other side of the base.

![Another Step](../img/ergo-jr/assembly/step-8.jpg)

### Step 9

Configure a motor "m5".

Mount two other shift_one_sides and the configured motor. All the pulley should still be on the same side.

![Another Step](../img/ergo-jr/assembly/step-9.jpg)

### Step 10 - The tool of your choice

To finish your Ergo Jr, you need to add a tool at its end. So first choose the tool you want depending on what you want to do.

*Note that they can be easily and quickly changed, so you can adapt the tool to the different activities.*

![image](../img/ergo-jr/assembly/ergo-tool-2.jpg)

### Step 11: Lamp shade

### Step 11: Gripper

### Step 11: Pen holder

### Step 12

Grab your [favorite drink](https://www.flickr.com/photos/poppy-project/16488256337/) and relax.

<!--
##  Electronics

A small bit of electronic hacking is required for now. You need to power the Xl320 motors with 7.5V.

The cables between motors have two purposes:
- distribute alimentation to each motor
- convey messages to each motor (ordering them to move or asking them for sensors' values)

Thus the alimentation should be added between the USB2Dynamixel (that deals with communication aspects) and the motors. To this end simply create the following hack.

![Power Board](../img/ergo-jr/electronic/power-board-xl320.png)

Then connect the USB2Dynamixel on one end and the first motor on the other end. Connect the USB2Dynamixel to your computer or Raspberry Pi. And power the board with 7.5V.

The communication with the motor is TTL, thus configure the USB2Dynamixel in TTL mode as show below.

![Power Board](../img/ergo-jr/electronic/usb2dynamixel.jpg) -->
