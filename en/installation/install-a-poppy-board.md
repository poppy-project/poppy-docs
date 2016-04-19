# Install a Poppy board

> **Caution** This chapter is only for people who want to create from scratch a Raspberry Pi or Odroid image. **It is strongly advised** to simply [burn a pre-made system image on your robot](burn-an-image-file.md)

To install a Poppy board, we start from a vanilla distribution (Debian or Ubuntu), remove some useless stuff and launch some scripts. 

**Keep in mind that our install scripts are not written for end users: it is not well maintained and there is almost no error messages. **If you encounter issues with these scripts, you can post a message on the [issue tracker on GitHub](https://github.com/poppy-project/poppy-installer/issues).


## For a Poppy Ergo Jr / Raspberry Pi
Raspberry Pi are preformated with n00b, you need to install Raspbian first.

Download the image of your system:
* [Raspbian Jessie](https://www.raspberrypi.org/downloads/raspbian/) if you are using a **Raspberry Pi 2**.

Write the image to the SD-card with you favorite disk writer tool as explained in the [startup section](burn-an-image-file.md#write-an-image-to-the-sd-card).

> **Info** If you are using Windows, you have no native SSH client ; you have download and install [Putty](http://www.putty.org/) or [bitwise](https://www.bitvise.com/ssh-client-download) to use SSH.
Login to the board in SSH: `ssh pi@raspberrypi.local`, password=raspberry.

You will need to make sure that you have enough free space in your raspberry. The easiest way is to use the raspi-config script to expand your partition to the full SD-card. Just log into your raspberry and run:

```bash
sudo raspi-config --expand-rootfs
```

Be sure that your board is connected to the Internet, and use ["raspoppy"](https://github.com/pierre-rouanet/raspoppy) installer:
```bash
curl -L https://raw.githubusercontent.com/pierre-rouanet/raspoppy/master/raspoppyfication.sh | bash -s "poppy-ergo-jr"
```

Reboot after the end of the installation.
The hostname, default user and password will be all set to "poppy" (`ssh poppy@poppy.local` password=poppy).
You can test your installation with the web interface in your web browser http://poppy.local.

## Install a Poppy Torso / Humanoid on a Odroid U3 or Odroid XU4


These boards come with a working Ubuntu base image on the MMC you can use the install scripts on it.
In the case you have corrupted your system, you can download other images here:
* [Ubuntu 14.04 for Odroid U3](http://odroid.com/dokuwiki/doku.php?id=en:u3_release_linux_ubuntu)
* [Ubuntu 14.04 for Odroid XU3/XU4](http://odroid.in/ubuntu_14.04lts/ubuntu-14.04.1lts-lubuntu-odroid-xu3-20150212.img.xz)
To burn it on the MMC/SD-card, look at the [startup section](burn-an-image-file.md#write-an-image-to-the-sd-card).


> **Note** If you are using Windows, you have no native SSH client ; you have download and install [Putty](http://www.putty.org/) or [bitwise](https://www.bitvise.com/ssh-client-download) to use SSH.

Login to the board in SSH: `ssh odroid@odroid.local`, password=odroid.

Be sure that your board is connected to the Internet, and use this start this command:

```
curl -L https://raw.githubusercontent.com/poppy-project/poppy_install/master/poppy_setup.sh | sudo bash
```
A quick time after, the board should restart with a new user and hostname.
You can login with `ssh poppy@poppy.local` password=poppy.

All software installation will be done after the restart, and thanks to the compilation of heavy Python packages (Scipy, Numpy) it can takes 30 to 45 minutes to complete.
To track if the installation process is still running, you can run `pgrep -lf 'poppy_launcher.sh'`.

After this, you can update the web interface (remplace 'poppy-torso' by your creature):

```
export POPPY_USER=poppy
export POPPY_CREATURE=poppy-torso
curl https://raw.githubusercontent.com/poppy-project/poppy-installer/master/install-deps/install-web-apps.sh | bash
```

Reboot after the end of the installation.
The hostname, default user and password will be all set to "poppy" (`ssh poppy@poppy.local` password=poppy).
You can test your installation with the web interface in your web browser http://poppy.local.



<!--
One day this would work:
 ```bash
wget https://raw.githubusercontent.com/poppy-project/poppy-installer/master/poppy-configure.sh -O poppy-configure.sh
```

This script takes two parameters:

`poppy-configure.sh <board> <creature>

* The board name {odroid, rpi}.
* The creature name {poppy-humanoid, poppy-torso, poppy-ergo-jr}.

To build the system for a Poppy Ergo Jr on a Raspberry Pi, one would run:

```bash
sudo bash poppy-configure.sh rpi poppy-ergo-jr
```
 -->