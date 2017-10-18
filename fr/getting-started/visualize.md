# Utiliser les robots dans un simulateur

## Robots Poppy simulés

Une version simulée de chaque robot Poppy est disponible (Humanoid, Torso, Ergo Jr).

On peut utiliser deux « simulateurs » avec les robots Poppy : * [ V-REP](http://www.coppeliarobotics.com) : un simulateur de robotique avec de nombreuses possibilités et très utilisé * [ un visualisateur web-3D](http://simu.poppy-project.org) : plus léger, mais sans simulation physique

> **Attention** Pour le moment seul l'Ergo Jr peut être utilisé dans le visualiseur web. Si vous souhaitez simuler d’autres créatures, vous devez utiliser V-REP. On souhaiterai prendre en charges les autres robots, mais aucun calendrier n'est fixé sur ce point là.

L'utilisation d'un simulateur est très intéressante. Cela permet de développer et d'essayer des programmes sans avoir besoin d'un vrai robot. Plus particulièrement, cela permet :

* To discover and try the robot possibilities without having to spend real money.
* In a context where multiple users share a robot. For instance in a classroom where each group can work using the simulator and validate their program on a real robot.
* To design and run complex and time consuming experiments.

We try to make the **switch from a simulated Poppy robot to the real one as transparent and as simple as possible**. Most of the programming documentation is actually valid for both simulated and real robots. The chapter *[From simulation to real robot](../from-simulation-to-real-robot/README.md)* will guide you in the few steps to transform your program running in simulation to one working with a real robot.

> **Warning** If you want to use Poppy robots using a simulator you will have to install some of the poppy libraries locally on your computer.

## Install the needed software

> **Info** Info: A full section is dedicated on how to *[install everything locally for using a simulator](../installation/install-poppy-softwares.md)* if you need more details.

While the physical robots come with an embedded computer pre-installed, you need to install some software libraries on your computer to control simulated Poppy creatures. You will also not have access to the robot web interface. You will have to manually launch the different services to start programming your robot (the Jupyter server for Python notebooks, or the Snap_!_ server).

To start controlling a simulated Poppy robots, either using V-REP or the web visualizer, you will need: * To have a working Python, we strongly recommend to use the [Anaconda Python distribution](https://www.continuum.io/downloads). It works with any version >=2.7 or >=3.4. Prefer Python 2.7 if you can, as it is the version we used. * To install the Poppy libraries: pypot and the library corresponding to your creature (e.g. poppy-ergo-jr).

## Using V-REP

[V-REP](http://www.coppeliarobotics.com) is a well known and powerful robot simulator. It is widely used for research and educational purposes. Moreover, it is available for free under an educational license. It can be download from [this website](http://www.coppeliarobotics.com/downloads.html) (works under Mac OS, Windows and GNU/Linux).

> **Warning** It is important to note that as V-REP is simulating the whole physics and rendering of the robot, it may be slow if you do not have a powerful computer (especially the GPU card).

![Poppy Humanoid in V-REP](../img/humanoid/vrep.png)

All main Poppy robots are available in V-REP: * Poppy Humanoid * Poppy Torso * Poppy Ergo Jr

V-REP can be used to learn how to control motors, get information from sensors but also to interact with the simulated environment. It can be controlled using Python, Snap_!_ or through the REST API. Here, are some examples of what the community has already been doing with it: * A pedagogical activity to discover the different motor of your robot and how they can be controlled. * A scientific experiment, where a Poppy Torso is learning how to push a cube on a table in front of it

![Torso V-REP](../img/torso/explauto-vrep.png)![Torso Explauto Res](../img/torso/explauto-res.png)

> **Note** Even if we try, to reproduce the robot behavior and functioning, some differences remain. In particular, if you make a robot walk in simulation that does not necessarily mean that it will walk in the real world (and vice-versa).

To start the simulated robot, first open V-REP and instantiate you robot with `simulator='vrep'` argument. V-REP will open a popup that you will have to close to enable to communication between V-REP and Python.

```python
from pypot.creatures import PoppyErgoJr
robot = PoppyErgoJr(simulator='vrep')
```

If you want to control a simulated robot from Snap, you can also start it directly from the command line interface `poppy-services` in your terminal (called command prompt on Windows):

```bash
poppy-services --vrep --snap poppy-ergo-jr
```

## Using our web visualizer

Our web visualizer will show you a 3D representation of a Poppy robot. For this, you will need to connect it to either a real robot (through the REST-API) or to a simple mockup robot running on your computer. You simply have to set the host variable from within the web interface to match the address of your robot.

![Poppy Simu Presentation](../img/visu/presentation.png)

In Python, you can start the mockup robot with:

```python
from pypot.creatures import PoppyErgoJr
robot = PoppyErgoJr(simulator='poppy-simu')
```

Add a `use_snap=True` argument if you want to start Snap API.

If you want to use command the mockup robot from Snap, you can also start it directly from the command line interface `poppy-services` in your terminal (called command prompt on Windows):

```bash
poppy-services --poppy-simu --snap poppy-ergo-jr
```

As for V-REP, you can control your robot using Python, Snap_!_, or the REST API. Yet, there is no physics simulation so its lighter but you will not be able to interact with objects.

Here is an example with Python:

![Poppy Visu with Python](../img/visu/python-setup.gif)