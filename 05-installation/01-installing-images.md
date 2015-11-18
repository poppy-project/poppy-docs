# Install a Poppy Operating System Image
Poppy creatures are controlled by a small computer: a Raspberry Pi or a Odroid for the older versions. You have to install the Operating System on this board before using it.

The Poppy creatures Operating System use a GNU/Linux distribution, but you won't have to any knowledges on Linux to install the image on the Raspberry Pi.
You will only need a computer with a SD card reader to write the image on the SD card.

### Download the image

<!-- TODO: AJouter lien images (et les uploader aussi) -->
You have to choose the image to download depending on your Poppy creature and the targeted board :
* Poppy ErgoJr
* Poppy Torso
* Poppy Humanoid

The .zip file you have downloaded need to be unziped to get the image file for writing to your SD card.

### Write an image to the SD card

With the image file corresponding to your Poppy creature, you need to use an image writing tool to install it on your SD card.

See our guide for your system:

- [GNU/Linux](linux.md)
- [Mac OS](macos.md)
- [Windows](windows.md)

## Installing Poppy Operating System Images from a GNU/Linux computer

### Graphical interface

#### With Any distribution (Ubuntu, Fedora, Arch, Debian, ...)
- Download [UNetbootin binaries](https://unetbootin.github.io/linux_download.html)
- To run these binaries go to Right Click->Properties->Permissions and check "Execute"), or  chmod +x ./unetbootin-linux in a Terminal then start the application by running ./unetbootin-linux
- Select the Poppy image in the DiskImage section
- Select the drive corresponding to your SD card
- Click "ok" and be patient

#### If you are using Linux Mint
A program called "Usb key creator" is already installed and allow you to do the same operations than above.


### Command line
Please note that the use of the `dd` tool can overwrite any partition of your machine. If you specify the wrong device in the instructions below you could delete your primary Linux partition. Please be careful.

- Run `df -h` to see what devices are currently mounted.

- If your computer has a slot for SD cards, insert the card. If not, insert the card into an SD card reader, then connect the reader to your computer.

- Run `df -h` again. The new device that has appeared is your SD card. The left column gives the device name of your SD card; it will be listed as something like `/dev/mmcblk0p1` or `/dev/sdd1`. The last part (`p1` or `1` respectively) is the partition number but you want to write to the whole SD card, not just one partition. Therefore you need to remove that part from the name (getting, for example, `/dev/mmcblk0` or `/dev/sdd`) as the device for the whole SD card. Note that the SD card can show up more than once in the output of df; it will do this if you have previously written a Raspberry Pi image to this SD card, because the Raspberry Pi SD images have more than one partition.

- Now that you've noted what the device name is, you need to unmount it so that files can't be read or written to the SD card while you are copying over the SD image.

- Run `umount /dev/sdd1`, replacing `sdd1` with whatever your SD card's device name is (including the partition number).

- If your SD card shows up more than once in the output of `df` due to having multiple partitions on the SD card, you should unmount all of these partitions.

- In the terminal, write the image to the card with the command below, making sure you replace the input file `if=` argument with the path to your `.img` file, and the `/dev/sdd` in the output file `of=` argument with the right device name. This is very important, as you will lose all data on the hard drive if you provide the wrong device name. Make sure the device name is the name of the whole SD card as described above, not just a partition of it; for example `sdd`, not `sdds1` or `sddp1`; or `mmcblk0`, not `mmcblk0p1`.

    ```bash
    dd bs=4M if=poppy-ergojr.iso of=/dev/sdd
    ```

- Please note that block size set to `4M` will work most of the time; if not, please try `1M`, although this will take considerably longer.

- Also note that if you are not logged in as root you will need to prefix this with `sudo`.

- The `dd` command does not give any information of its progress and so may appear to have frozen; it could take more than five minutes to finish writing to the card. If your card reader has an LED it may blink during the write process. To see the progress of the copy operation you can run `pkill -USR1 -n -x dd` in another terminal, prefixed with `sudo` if you are not logged in as root. The progress will be displayed in the original window and not the window with the `pkill` command; it may not display immediately, due to buffering.

- Instead of `dd` you can use `dcfldd`; it will give a progress report about how much has been written.

- Run `sync`; this will ensure the write cache is flushed and that it is safe to unmount your SD card.

- Remove the SD card from the card reader.

---

*This article uses content from the Raspberry Pi documentation page [linux.md](https://www.raspberrypi.org/documentation/installation/installing-images/linux.md), which is shared under the [Creative Commons Attribution-ShareAlike 4.0 license](http://creativecommons.org/licenses/by-sa/4.0/)*

## Installing Poppy Operating System Images from a Mac OS computer

On Mac OS you have the choice of the command line `dd` tool or using the graphical tool ImageWriter to write the image to your SD card.

### (Mostly) graphical interface

- Connect the SD card reader with the SD card inside. Note that it must be formatted in FAT32.
- From the Apple menu, choose About This Mac, then click on More info...; if you are using Mac OS X 10.8.x Mountain Lion or newer then click on System Report.
- Click on USB (or Card Reader if using a built-in SD card reader) then search for your SD card in the upper right section of the window. Click on it, then search for the BSD name in the lower right section; it will look something like 'diskn' where n is a number (for example, disk4). Make sure you take a note of this number.
- Unmount the partition so that you will be allowed to overwrite the disk; to do this, open Disk Utility and unmount it (do not eject it, or you will have to reconnect it). Note that On Mac OS X 10.8.x Mountain Lion, "Verify Disk" (before unmounting) will display the BSD name as "/dev/disk1s1" or similar, allowing you to skip the previous two steps.
- From the terminal run:

    ```
    sudo dd bs=1m if=path_of_your_image.iso of=/dev/rdiskn
    ```

    Remember to replace `n` with the number that you noted before!

   - If this command fails, try using `disk` instead of `rdisk`:

       ```
       sudo dd bs=1m if=path_of_your_image.iso of=/dev/diskn
       ```

### Command line

- If you are comfortable with the command line, you can write the image to a SD card without any additional software. Open a terminal, then run:

    `diskutil list`

- Identify the disk (not partition) of your SD card e.g. `disk4` (not `disk4s1`).
- Unmount your SD card by using the disk identifier to prepare copying data to it:

    `diskutil unmountDisk /dev/disk<disk# from diskutil>`

    e.g. `diskutil unmountDisk /dev/disk4`

- Copy the data to your SD card:

    `sudo dd bs=1m if=image.img of=/dev/rdisk<disk# from diskutil>`

    e.g. `sudo dd bs=1m if=poppy-ergojr.iso of=/dev/rdisk4`

    - This may result in an ``dd: invalid number '1m'`` error if you have GNU
    coreutils installed. In that case you need to use ``1M``:

       `sudo dd bs=1M if=image.img of=/dev/rdisk<disk# from diskutil>`

    This will take a few minutes, depending on the image file size.
    You can check the progress by sending a `SIGINFO` signal pressing <kbd>Ctrl</kbd>+<kbd>T</kbd>.

    - If this command still fails, try using `disk` instead of `rdisk`:

       ```
       e.g. `sudo dd bs=1m if=poppy-ergojr.iso of=/dev/disk4`
       ```
       or
       ```
       e.g. `sudo dd bs=1M if=poppy-ergojr.iso of=/dev/disk4`
       ```

### Alternative method

**Note: Some users have reported issues with using Mac OS X to create SD cards.**

These commands and actions need to be performed from an account that has administrator privileges.

- From the terminal run `df -h`.
- Connect the SD card reader with the SD card inside.
- Run `df -h` again and look for the new device that wasn't listed last time. Record the device name of the filesystem's partition, for example `/dev/disk3s1`.
- Unmount the partition so that you will be allowed to overwrite the disk:

    ```
    sudo diskutil unmount /dev/disk3s1
    ```

    (or open Disk Utility and unmount the partition of the SD card (do not eject it, or you will have to reconnect it)
- Using the device name of the partition, work out the raw device name for the entire disk by omitting the final "s1" and replacing "disk" with "rdisk". This is very important as you will lose all data on the hard drive if you provide the wrong device name. Make sure the device name is the name of the whole SD card as described above, not just a partition of it (for example, rdisk3, not rdisk3s1). Similarly, you might have another SD drive name/number like rdisk2 or rdisk4; you can check again by using the `df -h` command both before and after you insert your SD card reader into your Mac. For example, `/dev/disk3s1` becomes `/dev/rdisk3`.
- In the terminal, write the image to the card with this command, using the raw disk device name from above. Read the above step carefully to be sure you use the correct rdisk number here:
    ```
    sudo dd bs=1m if=poppy-ergojr.iso of=/dev/rdisk3
    ```

    If the above command reports an error (`dd: bs: illegal numeric value`), please change `bs=1m` to `bs=1M`.

    If the above command reports an error `dd: /dev/rdisk3: Permission denied` then that is because the partition table of the SD card is being protected against being overwritten by MacOS. Erase the SD card's partition table using this command:
    ```
    sudo diskutil partitionDisk /dev/disk3 1 MBR "Free Space" "%noformat%" 100%
    ```
    That command will also set the permissions on the device to allow writing. Now try the `dd` command again.

    Note that `dd` will not feedback any information until there is an error or it is finished; information will be shown and the disk will re-mount when complete. However if you wish to view the progress you can use 'ctrl-T'; this generates SIGINFO, the status argument of your tty, and will display information on the process.
- After the `dd` command finishes, eject the card:

    ```
    sudo diskutil eject /dev/rdisk3
    ```

    (or: open Disk Utility and eject the SD card)

---

*This article uses content from the Raspberry Pi documentation page [mac.md](https://www.raspberrypi.org/documentation/installation/installing-images/mac.md), which is shared under the [Creative Commons Attribution-ShareAlike 4.0 license](http://creativecommons.org/licenses/by-sa/4.0/)*

## Installing Poppy Operating System Images from a Windows computer

- Insert the SD card into your SD card reader and check which drive letter was assigned. You can easily see the drive letter (for example `G:`) by looking in the left column of Windows Explorer. You can use the SD Card slot (if you have one) or a cheap SD adaptor in a USB port.
- Download the Win32DiskImager utility from the [Sourceforge Project page](http://sourceforge.net/projects/win32diskimager/) (it is also a zip file); you can run this from a USB drive.
- Extract the executable from the zip file and run the `Win32DiskImager` utility; you may need to run the utility as administrator. Right-click on the file, and select **Run as administrator**.
- Select the image file you extracted above.
- Select the drive letter of the SD card in the device box. Be careful to select the correct drive; if you get the wrong one you can destroy your data on the computer's hard disk! If you are using an SD card slot in your computer and can't see the drive in the Win32DiskImager window, try using a cheap SD adaptor in a USB port.
- Click `Write` and wait for the write to complete.
- Exit the image and eject the SD card.

---

*This article uses content from the eLinux wiki page [RPi_Easy_SD_Card_Setup](http://elinux.org/RPi_Easy_SD_Card_Setup), which is shared under the [Creative Commons Attribution-ShareAlike 3.0 Unported license](http://creativecommons.org/licenses/by-sa/3.0/)*
