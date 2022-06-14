
# Poppy Ergo Jr: Bill of material

First, open your box, take out all parts from their bag or cardboard, and prepare a clean workbench. Let's have a look at the content of your kit!
If you are 3D-printing your own Ergo Jr this step will also allow you to check that you got all parts you need.

## What is included...
- 1x Raspberry Pi board: this board is the mini-computer acting as the brain of your robot
- 1x microSD card with pre-loaded Poppy software: this one goes in the Raspberry Pi
- 1x Raspberry Pi camera: as you may expect it, this camera is made especiallly for the Raspberry Pi. It comes with its interface cable.
- 1x AC power 7.5V 2A with a 2.1 x 5.5 x 9.5 jack connector (usually [this model](http://fr.rs-online.com/web/p/alimentations-enfichables/7262814/?searchTerm=ECP-15-7.5E))
- 1x short ethernet cable to communicate with your robot before you setup the wifi
- 6x XL-320 motors: these motors, coming with a cable each, are called **servomotors**: they're smarter than a regular motor because they are able to follow a setpoint position or speed
- 1x [Pixl board](https://github.com/poppy-project/pixl): this tiny board goes on top of the Raspberry Pi and allows it to talk to the XL-320 motors
- 1x set of [RS-10 rivets](https://www.robotis.us/rivet-set-rs-10/) ; or [mini rivet set](https://www.robotis.us/robotis-mini-rivet-set/) (slightly stronger clear rivets)
- 1x [rivet tool](https://www.robotis.us/tool-stl/)

- **3D-printed parts**: either you printed them yourselves from [STL files](https://github.com/poppy-project/poppy-ergo-jr/tree/master/hardware/STL) or they're included in your kit:
    - 1x [base.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/base.stl)
    - 3x [horn2horn.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/horn2horn.stl)
    - 3x [side2side.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/side2side.stl)
    - 1x [long_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/long_U.stl)
    - 1x [short_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/short_U.stl)
    - 1x [support_camera.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/support_camera.stl)
    - the tooltips (effectors):
        - 1x [lamp.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/lamp.stl)
        - 1x [gripper-fixation.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixation.stl)
        - 1x [gripper-fixed_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixed_part.stl)
        - 1x [gripper-rotative_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-rotative_part.stl)
        - 1x [pen-holder.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-holder.stl)
        - 1x [pen-screw.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-screw.stl)
    - 1x [disk_support.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/disk_support.stl) this is a laser-cut disk to host your robot ([plans here](https://github.com/poppy-project/poppy-ergo-jr/tree/master/hardware/laser_cutting)).
- **Screws**:
    - 4x M2.5x6mm screw to fix the Raspberry Pi to the base
    - 4x M2x5mm screw to fix the camera
    - 4x M2 nuts to fix the camera
    - 1x Standoff Male/Female M2.5 10mm to prevent the Pixl board from moving

[**>> Next step: Electronics assembly**](electronic-assembly.md)