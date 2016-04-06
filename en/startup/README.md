# Setup your Poppy Board

**Note: this chapter is only for people who want to control a tangible robot. If you intend to control a simulated robot on your computer, go to the [installation for advanced users section](../installation-for-advanced-users/README.md)**

Poppy creatures are controlled by a small embedded computer: a Raspberry Pi or a Odroid for the older versions.

The operating system of this computer is hosted on a SD card.

You may be in two kind of cases:
- You already have a SD card with the Poppy operating system (provided by one of the Poppy distributors for example). You're ready to go to the [assembly section](../assembly-guides/README.md).
- You have an empty SD-card, so you have to [download](#download-the-image) and [write](#write-an-image-to-the-sd-card) the operating system on the SD card .

**Info: The Poppy creatures operating system use a GNU/Linux distribution, but you won't have to any knowledges on Linux to install the image on the Raspberry Pi.
You will only need a computer with a SD card reader to write the image on the SD card.**

## Download the image

You have to choose the image to download depending on your Poppy creature and the targeted board:

* [Poppy ErgoJr](https://github.com/poppy-project/poppy-ergo-jr/releases)
* [Poppy Torso](https://github.com/poppy-project/poppy-torso/releases)
* [Poppy Humanoid](https://github.com/poppy-project/poppy-humanoid/releases/)

The .zip file you have downloaded need to be unzipped to get the image file for writing to your SD card.

## Write an image to the SD card

With the image file corresponding to your Poppy creature, you need to use an image writing tool to install it on your SD card.

See our guide for your system:

- [Windows](windows.md)
- [Mac OS](macos.md)
- [GNU/Linux](linux.md)
