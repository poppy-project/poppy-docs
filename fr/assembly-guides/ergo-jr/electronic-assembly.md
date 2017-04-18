# Assemblage électronique

#### Insérez la carte microSD dans la Raspberry Pi

Assurez-vous que vous utilisez une carte micro SD pré-configurée . Si il pas le cas, vous avez à écrire votre carte micro-SD avec l’image ISO d’Ergo Jr, ce qui est décrit dans la [section démarrage](../../installation/burn-an-image-file.md).

Insérez la carte micro-SD à l’intérieur de la Raspberry Pi : poussez la carte micro-SD dans la fente du connecteur jusqu'à entendre un « clic ». ![Raspberry Pi micro-SD](img/electronic/rpi-sd.jpg)

#### Assemblez la carte d'extension pixl

> **Info** La carte Pixl peut être acheté sur le site de [Génération Robot.](http://www.generationrobots.com/en/402420-carte-pixl.html)

[La Carte Pixl](https://github.com/poppy-project/pixl) vous permet d'alimenter le Raspberry Pi à partir d'une alimentation 7.5V DC ou avec des piles, et vous permet de communiquer avec les moteurs XL-320.

Plug the pixl at the end of Raspberry Pi headers. ![pixl](img/electronic/pixl-step_1-2.jpg)

Once the pixl is plugged (**and not before**), you can plug the DC power and the motors wire. ![pixl](img/electronic/pixl-step_3-4-5.jpg)

> **Caution** **You need to switch off the power supply** of the Pixl board before to put in or to take off the Pixl board of the Raspberry pi. Otherwise, you risk to burn the power converter of the Pixl board.

You can now [configure your motors](motor-configuration.md).