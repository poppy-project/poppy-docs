# Assemblage électronique

#### Insérez la carte microSD dans la Raspberry Pi

Assurez-vous que vous utilisez une carte micro SD pré-configurée . Si ce n'est pas le cas, vous devez "graver" votre carte micro-SD avec l’image ISO d’Ergo Jr, ce qui est expliqué dans la [section démarrage](../../installation/burn-an-image-file.md).

Insérez la carte micro-SD à l’intérieur de la Raspberry Pi : poussez la carte micro-SD dans la fente du connecteur jusqu'à entendre un « clic ». ![Raspberry Pi micro-SD](img/electronic/rpi-sd.jpg)

#### Assemblez la carte d'extension pixl

> **Info** La carte Pixl peut être achetée sur le site de [Génération Robot.](http://www.generationrobots.com/en/402420-carte-pixl.html)

[La carte pixl](https://github.com/poppy-project/pixl) vous permet d'alimenter la Raspberry Pi à partir d'une alimentation 7.5V DC ou avec des batteries, et vous permet de communiquer avec les moteurs XL-320.

Branchez la pixl à l’extrémité des headers du Raspberry Pi. ![pixl](img/electronic/pixl-step_1-2.jpg)

Une fois que la pixl est branchée (**et pas avant**), vous pouvez brancher l'alimentation et les fils des moteurs. ![pixl](img/electronic/pixl-step_3-4-5.jpg)

> **Attention** **Vous devez absolument éteindre l'alimentation** de la carte d'extension pixl avant de la connecter ou de la déconnecter de la Raspberry pi. Sinon, vous risquez de griller le convertisseur de tension de la carte Pixl.

Vous pouvez à présent [configurer vos moteurs](motor-configuration.md).