# Electronic assembly

#### Insert the microSD card into the Raspberry Pi

Make sure you are using a pre-configured micro SD card. If this is not the case, you must "engrave" your micro-SD card with the ISO image of Ergo Jr, which is explained in the [start section](../../installation/burn-an-image-file.md).

Insert the micro-SD card inside the Raspberry Pi: push the micro-SD card into the slot of the connector until you hear a "click". ! [Raspberry Pi micro-SD](img/electronic/rpi-sd.jpg)

#### Assemble the pixl expansion card

> **Info** The Pixl card can be purchased on the website of [Génération Robot.](http://www.generationrobots.com/en/402420-carte-pixl.html)

[The pixl card](https://github.com/poppy-project/pixl) allows you to power the Raspberry Pi from a 7.5V DC power supply or with batteries, and allows you to communicate with the motors XL-320.

Plug the pixl into the end of the Raspberry Pi headers.! [Pixl](img/electronic/pixl-step_1-2.jpg)

Once the pixl is plugged in (**and not before**), you can connect the power and the wires of the motors. ![Pixl](img/electronic/pixl-step_3-4-5.jpg)

> **Warning** **You must absolutely turn off the power** on the pixl expansion card before connecting or disconnecting it from the Raspberry pi. Otherwise, you may burn the voltage converter on the Pixl card.

You can now [configure your engines](motor-configuration.md).