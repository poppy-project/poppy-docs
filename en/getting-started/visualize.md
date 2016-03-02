## Visualize the robot in a simulator

### Simulated Poppy Creatures

Simulated versions of all Poppy robots (Humanoid, Torso, and Ergo Jr) are also available.

At the moment, only Poppy Ergo Jr can be used in the web visualizer. If you want to simulate other creatures, you should use V-REP.

**Note: If you want to use Poppy robots using a simulator you will have to install some of the poppy libraries locally on your computer.**

Indeed, while those libraries are already installed within the physical robots, they are not integrated in the simulators. More detailed of what you will have to do is given in the [section below](#using-v-rep).

Moreover, you will not have access to the robot web interface, but you will have to manually launch the different services to start programming your robot (the Jupyter server for Python notebooks, or use the Snap_!_ server).

This allows the development and test of programs without having a real robot. This is particularly useful:

* To discover and try the robot possibilities without having to spend money.
* In a context where multiple users share a robot; for instance in a classroom where each group can work using the simulator and validate their program on the real robot.
* To design and run complex and time consuming experiments.

We try to make the switch from a simulated Poppy robot to the real one as transparent and as simple as possible. Most of the documentation is actually valid for both simulated and real robots. Yet, a dedicated chapter *[Use a simulated robot](#todo)* will describe in details everything you need to know and do to use a simulated Poppy robot.

**Once your computer is setup, you will be able to write a program for the simulator and directly use it on a real robot (or vice-versa).**

### Using V-REP

[V-REP](http://www.coppeliarobotics.com/downloads.html) is a well known and powerful robot simulator. It is widely used for research and educational purposes. Moreover, it is available for free under a educational license.

*It is important to note that as V-REP is simulating the whole physics and rendering of the robot, it may be slow if you do not have a recent computer (especially the GPU card).*

![Poppy Humanoid in V-REP](../img/humanoid/vrep.png)

All main Poppy robots are available in V-REP:

* Poppy Humanoid
* Poppy Torso
* Poppy Ergo Jr

To start using V-REP for controlling Poppy robots, you will need:
* to install V-REP (work under Mac OS, Windows and GNU/Linux)
* to have a working Python (version >=2.6 or >=3.), we strongly recommend to use the [Anaconda Python distribution](https://www.continuum.io/why-anaconda).
* to install the Poppy libraries: pypot and the library corresponding to your creature (e.g. poppy-ergo-jr)

**Note: Details about all those steps can be found in section *[Install everything locally for using a simulator](#TODO)*.**

V-REP can be used to learn how to control motors, get information from sensors but also to interact with the simulated environment. It can be used using Python, Snap_!_ or through the REST API. Here, are some examples of what the community has already been doing using it:

* In a pedagogical activity to discover the different motor of your robot and how they can be controlled.

* In a scientific experiment, where a Poppy Torso is learning how to push a cube on a table in front of it

![Torso V-REP](../img/torso/explauto-vrep.png)![Torso Explauto Res](../img/torso/explauto-res.png)

*Note: Even if we try, to reproduce the robot behaviour and functioning, some differences remain. In particular, if you make a robot walk in simulation that does not necessarily mean that it will walk in the real world.*
