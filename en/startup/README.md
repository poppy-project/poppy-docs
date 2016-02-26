# Setup your Poppy Board

**Note: this chapter is only for people who want to control a tangible robot. If you intend to control a simulated robot on your computer, go to the [installation for advanced users section](../installation-for-advanced-users/README.md)**

Poppy creatures are controlled by a small embedded computer: a Raspberry Pi or a Odroid for the older versions.

The Operating System of this computer is hosted on a SD card.

You may be in two kind of cases:
- You already have a SD-card with the Poppy Operating System (provided by one of the Poppy distributors for example). You just have to put the SD card on the board.  
- You have an empty SD-card, so you have to install the operating System on the SD-card (explained below) and put the SD-card on the board.

**Note: The Poppy creatures Operating System use a GNU/Linux distribution, but you won't have to any knowledges on Linux to install the image on the Raspberry Pi.
You will only need a computer with a SD card reader to write the image on the SD card.**

## Download the image

<!-- TODO: add image links (et les uploader aussi) -->
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
