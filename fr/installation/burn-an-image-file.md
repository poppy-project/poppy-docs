# Startup with a Poppy robot

> **Note** This chapter is only for people who want to control a tangible robot. If you intend to control a simulated robot on your computer, look at the [simulation install path](README.md#you-want-to-try-poppy-robots-in-a-simulator-or-in-a-web-viewer).

Poppy creatures are controlled by a small embedded computer: a Raspberry Pi or an Odroid board.

The operating system of this computer is hosted on a SD card (you can also use an MMC for the Odroid).

You may be in two kind of cases:

- You already have a SD card with the Poppy operating system (provided by one of the Poppy distributors for example). You're ready to go to the [assembly section](../assembly-guides/ergo-jr.md).
- You have an empty SD-card, so you have to [download](#download-the-image-of-the-operating-system) and [write](#write-the-operating-system-image-to-the-sd-card) the operating system on the SD card.

> **Info** The Poppy creatures operating system use a GNU/Linux distribution, but you won't have to any knowledges on Linux to install the image on the Raspberry Pi. You will only need a computer with a SD card reader/writer to write the image on the SD card.

## Download the image of the operating system

You have to choose the image (file in `*.img.zip`) to download depending on your Poppy creature and the targeted board:

- [Ergo Jr](https://github.com/poppy-project/poppy-ergo-jr/releases/download/1.0.0-gm/2017-02-21-poppy-ergo-jr.img.zip)
- [Poppy Torso](https://github.com/poppy-project/poppy-torso/releases)
- [Poppy Humanoid](https://github.com/poppy-project/poppy-humanoid/releases/)

## Write the operating system image to the SD card

With the image file corresponding to your Poppy creature, you need to use an image writing tool to install it on your SD card.

### Burn the image with etcher (GUI software)

- *Download and install [etcher](http://etcher.io/).* It works for Windows (versions above Windows 7), OSX, and GNU/Linux operating systems.

![etcher](img/etcher.gif) - Insert the SD card into your computer. - Start Etcher, select the SD card drive, select the image (a file like `2017-04-13-poppy-ergo-jr.img.zip`). Start flashing. The image written to your card will be verified afterwards.

Now you are ready to [assemble your robot](../assembly-guides/ergo-jr.md)!

### Burn the image with `dd` (CLI software)

> **Danger** This method works only for GNU/Linux and OSX operating systems, and is not recommended if you don't understand what you do.

Insert the SD card and look for where your disk is mounted (/dev/mmcblk0 and /dev/disk2 for the following example). Adapt and execute one on these commands. *Be careful, you could erase one of your primary disk partition if you don't understand what you do*.

If you are on a GNU/Linux OS:

```bash
sudo dd bs=4M if=poppy-ergojr.img of=/dev/mmcblk0
```

If you are running OSX or another BSD based OS:

```bash
sudo dd bs=4m if=poppy-ergojr.img of=/dev/rdisk2
```

> **Info** The `dd` command does not give any information of its progress and so may appear to have frozen; it > could take more than five minutes to finish writing to the card. To see the progress of the copy operation you can run `sudo pkill -USR1 -n -x dd` in another terminal.

- Run `sync`; this will ensure the write cache is flushed and that it is safe to unmount your SD card.

- Remove the SD card from the card reader.

Now you are ready to [assemble your robot](../assembly-guides/ergo-jr.md)!