# Install Poppy softwares: when using a simulator or for advanced users

You may want to install Poppy softwares only if you are in one of these situation:
1. You want to control a simulated robot
2. [Advanced users] You want to install yourself the operating system of your robot instead of using a [pre-made ISO image](../installing-images/README.md)
3. [Advanced users] You want to control a Poppy creature from your computer WITHOUT using the Raspberry Pi board.

**Note: The first situation is a "normal case" but the second and third are special usages affordable only by advanced users who have a good comprehension of the global system.**

## Install the Python Interpreter and Poppy softwares

Poppy is run by Python computer code. Depending on your Operating System you will have to install Python and in any case you have to install the required libraries.
See our guide for your system:

### On a GNU/Linux OS

On most of GNU/Linux distributions, [Python is already available](#using-the-default-python).
If you are getting started with Python and want to install a full Python environment for scientific computing, we suggest you to use [Anaconda Python distribution](#using-anaconda).

#### Using the default Python
##### Install the dependencies
Pypot, the main library of the robot is depending (amongst some other) on two big scientific librairies *Numpy* and *Scipy*. These libraries may be installed with the Python package system (pip), but as they are themselves depending on C and Fortran they are a bit tricky co compile, and it easy to install them from the default package system of your distribution.

On Ubuntu & Debian:
```bash
sudo apt-get install python-pip python-numpy python-scipy python-matplotlib
```

On Fedora:
```bash
sudo yum install python-pip numpy scipy python-matplotlib
```

On Arch Linux:
```bash
sudo pacman -S python2-pip python2-scipy python2-numpy python2-matplotlib
```

**Note: The downside is the Python libraries from you distribution system are very often out of date.**

#### Using Anaconda
ng and data science, we suggest installing the Anaconda Python distribution (or at least the lighter miniconda installer), which provide Python and a complete set of open source packages for scientific computing and data science.


### On Mac OS

### On Windows

## Install the Poppy robotic simulator: V-REP

See our guide for your system.

### On a GNU/Linux OS

### On Mac OS

### On Windows
