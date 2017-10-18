# Démarrez et connectez le robot

Dans cette section, nous décrirons comment démarrer votre robot et donnerons un aperçu des possibilités d’y accéder.

## Configurer le logiciel

Les robots Poppy sont équipés d'une carte embarquée (exemple : Raspberry Pi, ODROID...) dont le rôle consiste à contrôler les moteurs et à accéder aux capteurs. À des fin de simplicité, on peut accéder à cet ordinateur à distance via une interface web. Il est facile de contrôler le robot à partir de votre propre ordinateur ou tablette sans avoir à télécharger / installer quoi que ce soit.

Il existe deux façons de configurer la carte pour votre robot Poppy: * [**la manière simple**](#easy-and-recommended-way-use-the-poppy-sdcard) : utilisez une image préprogrammée du système d'exploitation Poppy et écrivez-la (installez-la) sur la carte SD* [**la manière difficile pour les utilisateurs avancés**](#advanced-way-diy-install-everything-from-scratch) : installez tout à partir de zéro

> **Note** If you are planning to use a simulated robot, you must install the software on your personal computer. Follow the [instructions for setting up the simulation](README.md#you-want-to-try-poppy-robots-in-a-simulator-or-in-a-web-viewer).

### Easy and recommended way: use the Poppy SD-card

The easiest and quickest way - by far - is to use an already made system image for a SD-card. ISO images come with everything pre-installed for your Poppy robot. It is also a good way to ensure that you are using exactly the same software as we are. Thus, you will avoid most problems.

> **Note** Poppy robotic kits come with a ready to use SD-card. So, you do not have anything special to do.

The images can be found in the release of each creatures:

* [for the Poppy ErgoJr](https://github.com/poppy-project/poppy-ergo-jr/releases)
* [for the Poppy Torso](https://github.com/poppy-project/poppy-torso/releases)
* [for the Poppy Humanoid](https://github.com/poppy-project/poppy-humanoid/releases/)

They can be written to a SD-card (at least 8 Go) by using classical utility tools. Once the SD-card is ready, just insert it into the board. Then when you switch on your robot it should automatically start and you should be able to connect to its web interface.

> **Info** More details can be found in the [startup section](../installation/README.md).

### Advanced way: DIY, install everything from scratch

The advanced way mainly consists in installing everything needed from scratch. This follows the same procedure as we use to generate the image for SD-cards. We mention this possibilty here as it can be useful if:

* You are **working with a simulated robot** and thus have to manually install all the required software on your computer, this procedure could be a good place to see how this can be done on a Raspberry-Pi and adapted to another computer,
* you want to customize the environment,
* or simply if you like to understand how it works.

> **Caution** We try to keep this installation procedure as generic as possible. Yet, some details may vary depending on your operating system or your computer. Moreover, the installation from scratch required some good knowledge of how to install and setup a python environment.

Depending on what you want to do all steps are not necessary required. In particular, if you want to control a simulated robot, you may just want to install the python libraries for Poppy.

> **Info** More details can be found in the [Installation for advanced users section](../installation/README.md).

### Setup the network

Once your Poppy is assembled and its software is ready, the next step is to connect it to a network. The goal is to let you remotely access the robot from your computer or smartphone/tablet, control and program it.

They are two main ways to connect your robot to your computer/tablet/smartphone: * Connect both the robot and the computer to the same network (e.g. the box of your home or the school network). * Directly connect your robot to your computer using an ethernet cable.

> **Caution** While directly plugging the robot to a computer works for most users. It seems that in some strange cases it refuses to work.

To find the address of your robot on the network, we use the standard [Zeroconf protocol](https://fr.wikipedia.org/wiki/Zeroconf). It allows you to use the robot hostname: *"poppy.local"* as its address. This should works without any configuration under Mac OS and GNU/Linux. But it required to install [*Bonjour Print Services*](https://support.apple.com/kb/DL999) on Windows. If you prefer, you can use the IP address assigned to your robot instead. If you are not administrator of your network this can be a tricky information to find. In this case the first procedure should be preferred.

To check that everything is setup correctly, you can go to the following url using your favorite web browser: [http://poppy.local/](http://poppy.local). You can replace *poppy.local* by the IP address of your robot (something similar as http://192.168.0.42).

> **Caution** If you are not familiar with network configuration or have no idea what the previous paragraph poorly tried to explain, you should see with the IT network engineer, how this can be done.

### Use the web interface

The web interface is the central point to control, program and configure your robot. It can be used to: * Monitor and Control the robot * Program it in [Snap!](http://snap.berkeley.edu) * Program it in [Python](https://www.python.org) * Configure the robot (change its name, enable/disable the camera, update) * Reset and shutdown the robot

To access this interface, you simply have to go to the URL using your favorite web browser:

* http://poppy.local (if you changed the name of your robot, simply replace *poppy* by its new name)
* or using directly its IP address

You should see something like:

![Home Page](../img/poppy_home.png) The buttons can be used to navigate to the different features. For instance, if you click on the *Monitor and Control*, you will access the monitor web app:

![Monitor interface](../img/poppy_monitor.png)

This let you turn on/off the motors of your robot, monitor them, and start/stop behaviors.

The *What happened* button is where you should look for more information is something goes wrong. Here is a screenshot of what you should see if everything goes well:

![Screenshot of the web log interface](../img/web-logs.png)