# Installation of Poppy softwares on a GNU/Linux OS

On most of GNU/Linux distributions, [Python is already available](#using-the-default-python).
If you are getting started with Python and want to install a full Python environment for scientific computing, we suggest you to use [Anaconda Python distribution](#using-anaconda).

## Using the default Python
### Install the dependencies
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

## Using Anaconda
ng and data science, we suggest installing the Anaconda Python distribution (or at least the lighter miniconda installer), which provide Python and a complete set of open source packages for scientific computing and data science.

