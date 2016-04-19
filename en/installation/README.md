# Installation
Poppy project is vast, there are a lot of installation paths depending on what you want to do:
- [You want to install a tangible Poppy robot](#you-want-to-install-a-tangible-poppy-robot)
- [You want to try Poppy robots in a simulator or in a web viewer](#you-want-to-try-poppy-robots-in-a-simulator-or-in-a-web-viewer)
- [You want to do some advanced stuff with a tangible robot](#you-want-to-do-some-advanced-stuff-with-a-tangible-robot)


> **Info** Whatever you want to do, all section below suppose that you have a [zeroconf client](install-zeroconf.md) (also called *Bonjour*) installed on your computer. It is not mandatory but otherwise, you will be on your robot IP address. 

## You want to install a tangible Poppy robot
Poppy creatures are controlled by a small embedded computer: a Raspberry Pi or an Odroid board.
The operating system of this computer is hosted on a SD card (you can also use an MMC for the Odroid).

You have two possible states:
- You already have a pre-formated SD card with the Poppy operating system (provided by one of the Poppy distributors). You have nothing to install, you are ready to go to the [assembly section](../assembly-guides/README.md).
- You have an empty SD-card, **so you have to [download](burn_an_image_file.md#download-the-image) and [write](burn_an_image_file.md#write-an-image-to-the-sd-card) the operating system on the SD card.** This is the most common case.

## You want to try Poppy robots in a simulator or in a web viewer
- [Install Poppy softwares on your computer](install-poppy-softwares.md)
- [Install V-REP simulator](install-vrep.md)


## You want to do some advanced stuff with a tangible robot
If you want to install yourself the system of the Poppy robots with our unstable install script:
- [Install a Poppy board](install-a-poppy-board.md)

If you want to control a tangible robot from your personal computer, you have to:
- [Install Poppy softwares on your computer](install-poppy-softwares.md)
- [Check USB to serial drivers](install-drivers.md) if you are on Windows
