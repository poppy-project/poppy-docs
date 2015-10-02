# Installation and updating

## Installation with a pre-flashed system image

If you are using an official Poppy creature (Poppy Humanoid, Poppy
Torso, Poppy Ergo Jr), you may receive a ready-to-use, already-flashed
SD card for your Raspberry Pi 2, with everything already installed.

If you are building your kit yourself, get a SD card (8 GB or more) and
flash it with the TODO LINK system image, following for example [these
instructions](https://www.raspberrypi.org/documentation/installation/installing-images//)

Now simply check your installation (TODO link network check) and, if
needed, update it. Your Poppy creature is ready to come alive.

## Manual installation

### Why do this?

-   Because no-one offers a system image for your Poppy creature
-   Because you want to install the latest version of each library (even
    if they may be less stable)
-   Because your creature's brain is not a Raspberry Pi. In fact, it may
    even be your desktop computer, where you directly pluggued the
    USB2serial device.
-   Because you are using a simulator

### Requirements

Pypot is written in [python](https://www.python.org/) and need a python
interpreter to be run. Moreover pypot has [scipy](www.scipy.org/) and
[numpy](http://www.numpy.org) for dependencies, as they are not fully
written in python they need system side packages to be build, it easier
to use pre-build binaries for your operating system.

### Windows

The easier way is to install [Anaconda](http://continuum.io/downloads) a
pre-packaged [python](https://www.python.org/) distribution with lot of
scientific librairies pre-compiled and a graphical installer.

After that, you can install pypot with [pip](#via-python-packages) in
the command prompt.

### GNU/Linux

You can also install [Anaconda](http://continuum.io/downloads), but it's
faster to use the binaries provided by your default package manager.

On Ubuntu & Debian:

    sudo apt-get install python-pip python-numpy python-scipy python-matplotlib

On Fedora:

    sudo yum install python-pip numpy scipy python-matplotlib

On Arch Linux:

    sudo pacman -S python2-pip python2-scipy python2-numpy python2-matplotlib

After that, you can install pypot with [pip](#via-python-packages).

### Mac OSX

Mac OSX (unlike GNU/Linux distributions) don’t come with a package
manager, but there are a couple of popular package managers you can
install, like [Homebrew](http://brew.sh/).

The easier way is to install [Homebrew](http://brew.sh/). You have to
type these commands in a terminal:

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

An use Homebrew to install python:

    brew install python

After that, you can install pypot with [pip](#via-python-packages).

### Via Python Packages

The pypot package is entirely written in Python. So, the install process
should be rather straightforward. You can directly install it via
easy\_install or pip:

    pip install pypot

**or**:

    easy_install pypot

The up to date archive can also be directly downloaded
[here](https://pypi.python.org/pypi/pypot/).

If you are on a GNU/Linux operating system, you will need to execute the
above commands with **sudo**.

### From the source code

You can also install it from the source. You can clone/fork our repo
directly on [github](https://github.com/poppy-project/pypot).

Before you start building pypot, you need to make sure that the
following packages are already installed on your computer:

-   [python](http://www.python.org) developed on 2.7 (also works on 3)
-   [pyserial](http://pyserial.sourceforge.net/) 2.6 (or later)
-   [numpy](http://www.numpy.org)
-   [scipy](www.scipy.org/)
-   [enum34](https://pypi.python.org/pypi/enum34)

Other optional packages may be installed depending on your needs:

-   [sphinx](http://sphinx-doc.org/index.html) and
    [sphinx-bootstrap-theme](http://ryan-roemer.github.io/sphinx-bootstrap-theme/)
    (to build the doc)
-   [PyQt4](http://www.riverbankcomputing.com/software/pyqt/intro) (for
    the graphical tools)
-   [bottle](http://bottlepy.org/) and
    [tornado](http://www.tornadoweb.org) for REST API support and
    http-server

Once it is done, you can build and install pypot with the classical:

    cd pypot
    sudo python setup.py install

### Testing your install

You can test if the installation went well with:

    python -c "import pypot"

You will also have to install the driver for the USB2serial port. There
are two devices that have been tested with pypot that could be used:

-   USB2AX - this device is designed to manage TTL communication only
-   USB2Dynamixel - this device can manage both TTL and RS485
    communication.

On Windows and Mac, it will be necessary to download and install a FTDI
(VCP) driver to run the USB2Dynamixel, you can find it
[here](http://www.ftdichip.com/Drivers/VCP.htm). Linux distributions
should already come with an appropriate driver. The USB2AX device should
not require a driver installation under MAC or Linux, it should already
exist. For Windows XP, it should automatically install the correct
driver.

> **note**
>
> On the side of the USB2Dynamixel there is a switch. This is used to
> select the bus you wish to communicate on. This means that you cannot
> control two different bus protocols at the same time.

On most Linux distributions you will not have the necessary permission
to access the serial port. You can either run the command in sudo or
better you can add yourself to the *dialout* or the *uucp* group
(depending on your distribution):

    sudo addgroup $USER dialout
    sudo addgroup $USER uucp

At this point you should have a pypot ready to be used! In the extremely
unlikely case where anything went wrong during the installation, please
refer to the [issue tracker](https://github.com/poppy-project/pypot/issues).

## Updating

Currently, Pypot is still updating 'by hand', by command line while SSH
into the robot.

If you are using PIP, enter:

    pip install --upgrade pypot

If you are using the sources, go to the \~/dev/pypot folder and enter:

    git pull
    python setup.py install
