# Primordial warnings to assemble a Torso
## Ignoring these warnings will necessarily lead to a non-working robot and broken hardware

![BOM of Poppy Humanoid](../img/humanoid/bom.jpg)

It is primordial that **your read and understand these warnings below** before doing anything with your hardware.

## PRIMORDIAL warning #1 : Align the horn with the axis of a brand new motor

When a Dynamixel motor is sold, its horn (the metallic wheel) is shipped separately from the motor iself. It is your role to assemble it on the axis, **by respecting precisely the alignment thanks to the marking** as in the pictures below. The white washer of MX-28 and MX28-AT motor has to be inserted between the motor and the horn.


With MX-28 and MX-28AT motors, the horn is assembled by forcing on it. Hence, if you make a mistake, **you will not be able to come back**. Be sure of the alignement before forcing with the central screw.

<img src="../img/humanoid/horn.jpg" alt="horn" style="height: 350px;" />
<img src="../img/humanoid/axe.jpg" alt="axis" style="height: 350px;" />

### If you are unsure that you have well aligned the horn

If you are unsure that you have well aligned the horn: Install [Poppy software](../../installation/install-poppy-softwares.md) and invoke [`poppy-configure`](../../TODO) with the name of a motor of the same model (MX28/MX-28AT or MX-64) so that it goes to its zero angle. When it's at its zero angle, the horn always has the unique point pointing upwards and the two points pointing downwards, as in the picture. If, after setting your motor to zero angle, the horn does not point upwards, then you made a mistake in horn alignment.

![](../img/humanoid/mx28-zero.jpg)

### If you made a mistake in horn alignment

If you assembled the horn and forced without aligning it correctly, you have two solutions:
* The offset can be compensated from software in the configuration file of your creature, but this is an advanced operation and you first need to know how much the offset is
* You can attempt to remove the horn. You will necessarily damage the motor, so be very cautios in order to minimize damages. Proceed as follows:
  * Use a flat screwdriver with a tip of about 2mm in length
  * Carefully slip the tip under the horn
  * Apply a slight rotative pressure pressure on you screwdriver
  * Rotate the horn of 45° and apply another pressure there as shown on the picture
  * Pursue pressures evert 45° all around the horn by keeping your screwdriver always inserted at the same location in order to minimize damages of the black chassis and the washer
  * When the horn is disengaged of about 2mm from the motor (you screwdriver cannot force anymore because it's too narrow), you should be able to pull the horn by hand by pulling very straight and shaking slightly
  * Re-insert then your horn properly

![](../img/humanoid/remove_horn.jpg)


### Particular cases of horn alignment according to motor types
Horns of motors AX AX-12 and AX-18 are also oriented but motors are shipped with the horn pre-assembled.
Horns of motors MX-64 and MX-64AT are also oriented but horns can be removed easily with no damage to the motor.
The assembly of motors MX-32 and MX-32AT and thus the most at risk.

## PRIMORDIAL warning #2: Don't use too much thread locker
Thread locker is included in your kit. Place some thread locker at the tip of all screws to prevent vibrations from untying the screws. However, dipping the extremity of the screw on the thread locker is enough (a drop for each screw hole is too much). **Otherwise disassembling your robot can be very hard or impossible!**. If you're unsure, don't use the thread locker in a fist step, it will always be possible to put it later when you know your robot better.


## PRIMORIDAL warning #3: Align the horn with 3D-printed parts
Notice that horna all have 3 dots and that the 3D-printed parts also have them close to motor axes. Generally, the opposite axis of the motor axis is a free wheel and 3D-printed parts do not have any point in that side ; except for symmetrical parts such as the legs, that have 3 points on both sides. According to the 3D printing technique, the 3 dots might not been easily visible. Some parts, such as the feet, only have 1 visible point because the parts are hollowed the other side.

You must align the horn with the 3D-printed parts by matching the 3 points as the picture below.

![](../img/humanoid/three_dots.jpg)

Than you can screw.

## Warning #4: All parts have an unique orientation
It is very easy to get trapped by inserting a motor or a part the wrong way. If you do not pay attention you might find that your assembly is correct because holes align well with pieces but they will be mistakes. It is parts of the game and it is not important, because except for the first and second primordial steps, your robot can always be disassembled.

In order to minimize the risk of mistakes, compare scrupulously your sub-assembly with pictures and videos at each assembly step. These prominent visual elements should help:

* The position of motor axis vs the position of the free wheel
* The position of the motor's sticker
* The position of the motor's electrical connector
* The curvature of 3D-printed parts

## Warning #5: Your robot is sensitive to interferences

If you meet sporadic communication issues with motors such as `DxlError` or `timeout`, it is possible that interferences perturbate your robot. Here are fixes to attempt:
* Change the motor cables: Motor cables heat and their conductive properties are getting worse over time. A typical example is when you feel that the cable is more rigid than a brand new cable
* It may be useful to cut the central wire of the cable directly connected to the USB2AX like shown on the picture (and only that one). Indeed, it is known that it can create interferences and this wire (+12V) is unused at this location. 

![](../img/humanoid/usb2ax-2wires.jpg)

## Last generic warnings
You are certainly very excited to assemble your robot, but **patience and precision** are your allies. In case of doubt, search answers to your questions in the documentation or in the [forum](http://forum.poppy-project.org).

Finally, note that your kit and the Pooppy software may differ a bit from what you see in pictures and videos. In particular:
* The MX-28 motor is now obsolete and is being replaced by MX-28AT, almost identical except that one of its side is already threaded: then it won't be necessary to use nuts on this side if you must insert a screw there.
* The herborist software used in the videos requires to enter the configuration parameters of each motor (communicaiton speed, digital id, ...) but the Poppy Configure tool can replace Herborist: it does the same just but you will only have to know the motor name e.g. `bust_x`
* The initial robot's head has been upgraded with a Raspberry Pi 3 insted of the Odroid board. As a consequence the shape of the head is adapted to the Pi 3

[**Next >> 2. Bill Of Material (BOM)**](bom.md)
[**<< Back to menu**](README.md)
