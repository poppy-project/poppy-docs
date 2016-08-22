## Assemblage de l'électronique

#### Insérez la carte micro-SD dans le Raspberry Pi
Assurez vous que vous utilisez une carte micro-SD préconfigurée.
Si cela n'est pas le cas, vous devez "graver" votre carte micro-SD avec l'image ISO Ergo Jr, comme décrit dans la [section démarrage](../../installation/burn-an-image-file.md).

Insérez la carte micro-SD dans le Raspberry Pi: poussez la carte micro-SD dans le connecteur jusqu'à ce que vous entendiez un "click".
![Raspberry Pi micro-SD](../../../en/assembly-guides/ergo-jr/img/electronic/rpi-sd.jpg)

#### Assemblez la carte d'extension pixl
> **Attention** La carte Pixl sera disponible auprès de Génération Robot à partir de Mai 2016.

La [Carte Pixl](https://github.com/poppy-project/pixl) vous permet d'alimenter le Raspberry Pi à partir d'une alimentation 7.5V DC ou avec des piles, et vous permet de communiquer avec les moteurs XL-320.

Branchez le Pixl à l'extrêmité de l'entête du Raspberry Pi.
![pixl](../../../en/assembly-guides/ergo-jr/img/electronic/pixl-step_1-2.jpg)

Une fois le Pixl branché (**et pas avant**), vous pouvez brancher une alimentation DC et les fils des moteurs.
![pixl](../../../en/assembly-guides/ergo-jr/img/electronic/pixl-step_3-4-5.jpg)

> **Attention**  **Vous devez absolument éteindre l'alimentation** de la carte d'extension Pixl avant de la connecter ou de déconnecter du Raspberry pi. Sinon, vous risquez de griller le convertisseur de courant de la carte Pixl.

Vous pouvez à présent [configurer les moteurs](motor-configuration.md).
