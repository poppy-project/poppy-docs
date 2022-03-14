# Install drivers

> **Caution** This chapter is only for people who want to control a tangible robot **without** an embedded board (Raspberry Pi or Odroid). **It is a special case for advanced users.**

If you intend to control tangible robots from your computer **without** a Raspberry Pi, and you use a computer with Windows (vs GNU/Linux or MAC OSX), you may need to install manually drivers for the USB2AX or the USB2Dynamixel.

## If you use a [USB2AX](http://www.xevelabs.com/doku.php?id=product:usb2ax:usb2ax)

If the USB2AX is not recognized out of the box (its LED stay red after having been plugged) on your computer, you probably need to install manually its drivers. 
The installation process and the files to download can be found on the [USB2AX documentation](http://www.xevelabs.com/doku.php?id=product:usb2ax:quickstart).
You don't need drivers for GNU/Linux or MAC OSX, but note that it doesn't works very well with MAC OSX.

If you want to control XL-320 motors (protocol Dynamixel v2) from an USB2AX you may need to update the firmware to the version 04 of the USB2AX.

## If you use a [USB2Dynamixel](http://support.robotis.com/en/product/auxdevice/interface/usb2dxl_manual.htm)

You need to install FTDI drivers on your computer. You have to low the "Latency Timer Value" from 16ms to 1ms (minimum allowed value) as explained in the [FTDI documentation](http://www.ftdichip.com/Support/Knowledgebase/index.html?settingacustomdefaultlaten.htm) to avoid pypot timeouts.