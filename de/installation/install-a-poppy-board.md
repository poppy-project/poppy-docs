# Install a Poppy board

> **Warning** Warning: this chapter is only for people who want to create from scratch a Raspberry Pi or an Odroid system image. **It is strongly advised** to simply [burn a pre-made system image on your robot](burn-an-image-file.md).

To install a Poppy board, we start from a vanilla distribution (Debian or Ubuntu), remove some useless stuff and launch some scripts.

**Keep in mind that our install scripts are not written for end users: it is not well maintained and there is almost no error messages.** If you encounter issues with these scripts, you can post a message in the [support section](https://forum.poppy-project.org/c/support) of the forums.

## For a Poppy Ergo Jr / Raspberry Pi

Raspberry Pi SD cards are pre-writed with n00b OS, you need to install Raspbian OS first.

Download the image of your system: * [Raspbian Jessie](https://www.raspberrypi.org/downloads/raspbian/)

Write the image to the SD-card with you favorite disk writer tool as explained in the [startup section](burn-an-image-file.md#write-an-image-to-the-sd-card).

Add an empty file name ".ssh" in the boot partition to activate SSH.

Login to the board in SSH: `ssh pi@raspberrypi.local`, password=raspberry.

> **Note** Note: If you are using Windows, you have no native SSH client. You have to download and install [putty](http://www.putty.org/) or [mobaxterm](http://mobaxterm.mobatek.net/) to use SSH.

You will need to make sure that you have enough free space in your raspberry. The easiest way is to use the raspi-config script to expand your partition to the full SD-card. Just log into your raspberry and run (you will need to reboot it afterwards):

```bash
sudo raspi-config
```

Be sure that your board is connected to the Internet, and use ["raspoppy"](https://github.com/poppy-project/raspoppy) installer:

```bash
curl -L https://raw.githubusercontent.com/poppy-project/raspoppy/master/raspoppyfication.sh | bash -s "poppy-ergo-jr"
```

> **Note** Change `poppy-ergo-jr` in the command above by your desired Poppy creature you want to install on your Raspberry Pi.

Reboot after the end of the installation. The hostname, default user and password will be all set to "poppy" (`ssh poppy@poppy.local` password=poppy). You can test your installation with the web interface in your web browser http://poppy.local.

## Install a Poppy Torso / Humanoid on a Odroid U3 or Odroid XU4

These boards come with a working Ubuntu base image on the MMC you can use the install scripts on it. In the case you have not a fresh installation you have download and burn default system images: * [Ubuntu 14.04 for Odroid U3](http://odroid.com/dokuwiki/doku.php?id=en:u3_release_linux_ubuntu) * [Ubuntu 14.04 for Odroid XU3/XU4](http://odroid.in/ubuntu_14.04lts/ubuntu-14.04.1lts-lubuntu-odroid-xu3-20150212.img.xz)

To burn it on the MMC/SD-card, look at the [startup section](burn-an-image-file.md#write-an-image-to-the-sd-card).

Now you have a clean and fresh installation, you can mount your memory card to your board, plug your ethernet connection, and power up.

Login to the board in SSH: `ssh odroid@odroid.local`, password=odroid.

> **Info** If you are using Windows, you have no native SSH client ; you have to download and install [putty](http://www.putty.org/) or [mobaxterm](http://mobaxterm.mobatek.net/) to use SSH.

Be sure that your board is connected to the Internet, download and run poppy_setup.sh (replace 'poppy-humanoid' below with poppy-torso' if you want to install a Poppy Torso robot):

    wget https://raw.githubusercontent.com/poppy-project/odroid-poppysetup/master/poppy_setup.sh -O poppy_setup.sh
    sudo bash poppy_setup.sh poppy-humanoid
    

You should lose your ssh connection because of the board reboot. This reboot is needed to proceed to the finalisation of the partition resizing. Now your board should install all the poppy environment. **Please do not unpower the board or shut-it down.**

You can see the installation process by reconnecting you to your board with your new poppy account: `ssh poppy@poppy.local` password=poppy. **Because of the compilation of heavy Python packages (Scipy, Numpy) it can take more than 1 hour to complete.**

A process will automatically take you terminal and print the installation output. You can leave it with `ctrl+c`. You can get back this print by reading the install_log file:

    tail -f install_log
    

Be patient...

At the end of the installation, your board will reboot again. You can look at the log `tail -f install_log`, if everything ended well, last lines should be:

    System install complete!
    Please share your experiences with the community : https://forum.poppy-project.org/
    

> **Note:** If you are not sure of what going up, you can see if the install process is running with: `ps up $(pgrep -f 'poppy_launcher.sh')`

The hostname, default user and password will be all set to "poppy" (`ssh poppy@poppy.local` password=poppy). You can test your installation with the web interface in your web browser http://poppy.local.