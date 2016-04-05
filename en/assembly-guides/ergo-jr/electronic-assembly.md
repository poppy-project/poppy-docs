## Electronic assembly

#### Insert the micro-SD card in the Raspberry Pi
Make sure you use a pre-configured micro SD-card. If it not the case, you have to "burn" your micro-SD card with the ergo-jr ISO image, this is described in the [startup section](../../startup/README.md).

Insert the micro-SD card inside the Raspberry Pi: push the micro-SD in the connector slot until you hear a "click" sound.
![Raspbery Pi micro-SD](img/electronic/rpi-sd.jpg)

#### Assemble the pixl board
> **Caution** The pixl board will be available for purchaise in Mai 2016 at Generation robot.

[Pixl bord](https://github.com/poppy-project/pixl) allow to power up the Raspberry Pi from 7.5V DC power or battery and communicate with XL-320 motors.

Plug the pixl at the end of Raspberry Pi headers.
![pixl](img/electronic/pixl-step_1-2.jpg)

Once the pixl is plugged (**and not before**), you can plug the DC power and the motors wire.
![pixl](img/electronic/pixl-step_3-4-5.jpg)

> **Caution**  **You need to switch off the power supply** of the Pixl board before to put in or to take off the Pixl board of the Raspberry pi. Otherwise, you risk to burn the power converter of the Pixl board.

You can now [configure your motors](motor-configuration.md).