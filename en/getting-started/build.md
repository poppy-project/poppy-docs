## Build the robot

![Poppy Assembly](../img/assembly_pretty.jpg)


Depending on the Poppy robots you are planning to use, the assembly time, required skills, tools and difficulty may vary a lot. Building an Ergo Jr should not take more than one hour and no specific tool is needed while assembling an entire Poppy Humanoid may take a few days and quite a lot of screws!

This section intends to give you hints and an approach of some critical points so you aware of them before digging into the construction. We will also point to each dedicated chapter where you will find the resources and detailed step by step assembly procedure for each robot.


### Assembling an Ergo Jr

![Poppy Ergo Jr BOM](../img/ergo-jr/bom.jpg)
<!-- TODO: refaire une belle photo avec la vraie BOM -->


The Poppy Ergo Jr robot was designed to be a simple little robot, cheap and easy to use. The 3D parts were made so they can be easily printed on a basic 3D printer and the motors (6 XL-320 Dynamixel servos) are only 20$ each. You can find the complete list in the Chapter [Step by step assembly of an Ergo Jr](#TODO).

The Ergo Jr is very easy to build and its end effector can be easily changed - you can choose among several tools: a lamp, a gripper, a pen holder...

<!-- TODO: image des differents outils -->

Thanks to OLLO rivets the robot is very simple to assemble. These rivets can be removed and added very quickly with the OLLO tool. It should not take more than one hour to entirely built it, which allows great design freedom.

<!-- TODO: image des rivets et du tool en action -->

Except from **checking the motor orientation**, there is not really any pitfall. If you are familiar with Lego bricks, you should be able to assemble an Ergo Jr without much problem! In any cases, the rivets are made to be as easy to assemble than to disassemble, so in case of problem you can just start over!

Also make sure, to **configure your motors** before assembling the robot as it is harder to do after!


### Assembling a Torso or a Humanoid

![Poppy Humanoid BOM](../img/humanoid/bom.jpg)


Building a Poppy Torso or a Humanoid is more complex than a Ergo Jr but it is not really more complicated than building a Meccano or some Swedish furniture. It mainly consists on those few steps:


<!-- TODO: add links of the advanced doc -->
* assemble the horn on each motors: **you will have to be really cautious about the motor zero position!**
* configure the motors so they match the *poppy configuration*
* use a lot of screws to connect all 3D printed parts to the motors
* do a bit of electronic for the embedded board inside the head: this can be a bit tricky if you are not familiar with electronics.


Patience and precision are your allies, but in case of errors do not panic: Poppy is a robot intended to be assembled and disassembled. If you pay attention to the few **warnings** bellows, and with a few trials and errors you will have a working Poppy Torso or  POppy Humanoid:

*Warning 1: The Poppy humanoid and torso robots are built using mainly MX-28 and MX-64 Dynamixel servomotors, which are pretty powerful and may be harmful to your fingers or materials.
So be very careful and put the robot in a free space while testing it.*

*Warning 2: put the dot on the horn at the same point than the dot on the servo axis*

![](../img/humanoid/zero.JPG)

*Warning 3: adjusts the three dots of the motors with three dots of structural parts.*

![](../img/humanoid/three_dots.jpg)

*Warning 4: use thread locker to prevent vibrations from untying the screws. However, dip the extremity of the screw on the thread locker is enough (a drop for each screw hole is too much), otherwise disassembling your robot can be very hard!*

<!-- TODO: Add directly the youtube playlist of poppy torso and humanoid-->

**The assembly can be divided into seven major steps:**

* Trunk [(Text instruction)](https://github.com/poppy-project/Poppy-multiarticulated-torso/blob/master/doc/fr/5_DoFs_humanoid_spine.md) Videos demonstration [1/5](https://www.youtube.com/watch?v=83lrhXVNHYE), [2/5](https://www.youtube.com/watch?v=9oNGV9ggHaE), [3/5](https://www.youtube.com/watch?v=LXktU4MTITE), [4/5](https://www.youtube.com/watch?v=qwrgV6tKTO8), [5/5]().
* Chest [(Text instruction)](https://github.com/poppy-project/Poppy-multiarticulated-torso/blob/master/doc/fr/subassembly/chest_assembly_instructions.md) [(Video demonstration)](http://youtu.be/qwrgV6tKTO8)
* Right Arm [(Text instruction)](https://github.com/poppy-project/Poppy-basic-arms/blob/master/doc/right_arm_assembly_instructions.md) Videos demonstration [1/4](https://www.youtube.com/watch?v=SUlM_mE3plc), [2/4](https://www.youtube.com/watch?v=cYhGwD6r6NQ), [3/4](https://www.youtube.com/watch?v=BdQcOAwZbMY), [4/4](https://www.youtube.com/watch?v=Oe5v21sTst8).
* Left Arm, which is the exact symmetry of the Right Arm[(Text instruction)](https://github.com/poppy-project/Poppy-basic-arms/blob/master/doc/left_arm_assembly_instructions.md) Videos demonstration [1/4](https://www.youtube.com/watch?v=5FsPgEt4cfA), [2/4](https://www.youtube.com/watch?v=MIjfAXShLJ4), [3/4](https://www.youtube.com/watch?v=qCF_8-M5k1o), [4/4](https://www.youtube.com/watch?v=Oe5v21sTst8).
* Legs (only for Humanoid version) [(Text instruction)](https://github.com/poppy-project/Poppy-lightweight-biped-legs/blob/master/doc/legs_assembly_instructions.md)[(Video demonstration)](http://youtu.be/Am1XBYv134Y)
* Legs + Trunk (only for Humanoid version) [(Text instruction)](https://github.com/poppy-project/poppy-humanoid/blob/master/hardware/doc/Poppy_Humanoid_assembly_instructions.md#3--legstorso-asembly) [(Video demonstration)](http://youtu.be/5i0xVlrJc-8)
* Head [(Text instruction)](https://github.com/poppy-project/poppy-docs/blob/master/poppy-humanoid/assembly_doc/head_assembly.md)

As previously said, this section was just intended to give you an idea about what building a Torso or a Humanoid implies. A detailed step by step assembly can be found in their dedicated Chapter [Step-by-step assembly of a Poppy Torso](#TODO) or Chapter [Step-by-step assembly of a Poppy Humanoid](#TODO). 
