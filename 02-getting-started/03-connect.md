## Start and connect to the robot

In this section, we will describe how to start your robot and the possibilities to connect to it. We will focus here on real robots but we will also point to the advanced sections to follow if you are using a simulated robot.

### Setup the software

Poppy creatures come with an embedded board which job is to control motors and access the sensors. This computer also serves a web interface which makes it easy to control the robot from your own computer or a tablet without having to install anything specific.

There are two ways to setup the board for your Poppy:
* **the easy way**: use a pre-made iso for the SD-card
* **the advanced users way**: install everything from scratch

*Note: If you are using a simulated robot, you  must install the software locally. Thus, you can not use a pre made SD-card. You will have to follow the advanced way.*

#### Easy way: use the Poppy SD-card

The easiest and quickest way - by far - is to use an already made image for a SD-card. The images come with everything pre-installed for your poppy robot. It is also a good way to ensure that you are using exactly the same software as we and thus avoid most problems.

The images can be found in the [github of the project](#TODO):

* [for the ErgoJr]()
* [for the Humanoid]()
* [for the Torso]()

They can be copy to a SD-card (8Go recommended) by following the same procedure as [described by Raspberry-Pi](https://www.raspberrypi.org/documentation/installation/installing-images/README.md).

One the SD-card is ready, just insert it into the board and when you plug your robot it should automatically start and you should be able to connect to the web interface.

#### DIY: install everything from scratch

The other way is basically to follow the same procedure as we are using to generate the image for SD-card. This can be useful if:
* want to customize the environment ,
* you like to understand how it works,
* you are **working with a simulated robot** and thus have to manually install all the required softwares on your computer.

**Warning:** *We try to keep this installation procedure as generic as possible. Yet, some details may vary depending on your OS, or your computer. Moreover, the installation from scratch required some good knowledges of how to install and setup a python environment.*

![Linux](../img/linux.jpg)

The entire procedure is detailed in the [chapter TODO](#TODO). Depending on what you want to do all steps are not necessary required. In particular, you may just want to install the python libraries for poppy, or setup entirely a Linux environment to match the Poppy ones. The entire installation process used to make the SD-card image can be sum up with those steps:
* Customize a [Raspbian](https://www.raspbian.org) install for Poppy (setup a user/hostname...).
* Setup the Poppy utility tools (for install/update)
* Install the [Python Anaconda distribution](https://www.continuum.io/why-anaconda).
* Install the python libraries for Poppy (pypot/poppy-creature/poppy-\*).
* Setup the sensors for your creature.
* Install the web server for the control and monitoring interface.

### Setup the network



### Use the control and monitoring interface
