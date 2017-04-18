# Assembly guide for the Ergo Jr

![Ergo-tool](img/ErgoJr.jpg)

The Poppy Ergo Jr robot is a small and low cost 6-degree-of-freedom robot arm.
It consists of very simple shapes which can be easily 3D printed. They are assembled via OLLO rivets which can be removed and added very quickly with the OLLO tool.

Its end effector can be easily changed. You can choose among several tools:
* a lampshade,
* a gripper,
* or a pen holder.

Thanks to the rivets, they can be very quickly and easily swapped. This allows the adaptation of the tooltip to the different applications you plan for your robot.

XL-320 engines have the same functionalities as other Poppy creatures but are slightly less powerful and less precise. The advantage being that they are also less expensive.

The electronic card is visible next to the robot, which is very advantageous to understand, manipulate, and plug extra sensors. No soldering is needed, you just need to add the shield for XL-320 motors on top of the Raspberry Pi pins.

This chapter will guide you through all steps required to entirely assemble a Poppy Ergo Jr. It will cover:

* [motors configuration](motor-configuration.md)
* [electronic assembly](electronic-assembly.md)
* [hardware construction](mechanical-construction.md)

**The entire assembly should take about one or two hours** for the first time you build one. With more practice, half an hour should be more than enough.

At the end of the process, you should have a working Poppy Ergo Jr, ready to move!

We recommend you to follow carefully the instructions. Even if the Ergo Jr can be easily disassembled, it is always disappointing to need to start again a part of the assembly because you forget to configure the motors, or a motor is reversed.

<!-- Should be updated from https://github.com/poppy-project/poppy-ergo-jr/blob/master/doc/bom.md -->
## Bill of materials

Here you will find the complete list of material (BOM) needed to build a Poppy Ergo Jr.

## Poppy's material
- 1x [Pixl board](https://github.com/poppy-project/pixl) *(electronic board to control XL320 motors)*
- 1x [disk_support.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/disk_support.stl) (using laser cutting) the 2D plan can be found [here](https://github.com/poppy-project/poppy-ergo-jr/tree/master/hardware/laser_cutting). *You can also 3D print the base but it will take a lot of time*
- the 3D printed parts [STL here](https://github.com/poppy-project/poppy-ergo-jr/tree/master/hardware/STL)
  - 1x [base.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/base.stl)
  - 3x [horn2horn.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/horn2horn.stl)
  - 3x [side2side.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/side2side.stl)
  - 1x [long_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/long_U.stl)
  - 1x [short_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/short_U.stl)
  - 1x [support_camera.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/support_camera.stl)
  - the different tools
    - 1x [lamp.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/lamp.stl)
    - 1x [gripper-fixation.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixation.stl)
    - 1x [gripper-fixed_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixed_part.stl)
    - 1x [gripper-rotative_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-rotative_part.stl)
    - 1x [pen-holder.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-holder.stl)
    - 1x [pen-screw.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-screw.stl)

## Robotis parts
- 6x Robotis dynamixel motors XL-320
- 1x set of OLLO rivets (about 70 colored and 4 grey)
- 1x OLLO TOOL

## Screw
- 4x M2.5x6mm screw (for fixing the Raspberry Pi on the base)
- 4x M2x5mm screw (for fixing the camera)
- 4x M2 nuts (fixing camera)
- 1x Standoff Male/Female M2.5 10mm

## Various electronics
- 1x Raspberry Pi 2 or 3
- 1x micro SD 8Go (or larger)
- 1x Raspberry Pi camera
- 1x AC power 7.5V 2A with a 2.1 x 5.5 x 9.5 jack connector ([this one](http://fr.rs-online.com/web/p/alimentations-enfichables/7262814/?searchTerm=ECP-15-7.5E&relevancy-data=636F3D3226696E3D4931384E4B6E6F776E41734D504E266C753D6672266D6D3D6D61746368616C6C7061727469616C26706D3D5E5B5C707B4C7D5C707B4E647D2D2C2F255C2E5D2B2426706F3D313326736E3D592673743D4D414E5F504152545F4E554D4245522677633D424F5448267573743D4543502D31352D372E354526&sra=p) for instance).
- Short ethernet cable


<!--
TODO: assembly web interface
## Assembly web interface

Directly, from the web interface (see Chapter [Setup your Raspberry-Pi](#TODO) if you have not seen how to access it) you have access to a notebook presenting the assembly steps. It also allows the configuration of motors at the indicated steps.

It is the best way to easily assemble your robot as it will integrate all steps described in the following sections and moreover allows you to directly configure your motor so they are ready to use.
 -->
