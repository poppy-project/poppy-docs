# Installation

En fonction de ce que vous voulez faire, toutes les sections ci-dessous supposent que vous avez [ le client Zeroconf / Bonjour ](install-zeroconf.md) d'installé sur votre ordinateur. Ce n'est pas obligatoire mais autrement, vous devrez connaitre l'adresse IP de votre robot.

Le projet Poppy est vaste, il y a beaucoup de possibilités de chemins d'installation en fonction de ce que vous voulez faire.

## Vous voulez installer un robot Poppy physique

Les robots Poppy sont contrôlées par un petit ordinateur embarqué : un Raspberry Pi ou une carte ODROID. Le système d'exploitation de ces ordinateurs est stocké sur une carte SD (vous pouvez également utiliser un contrôleur MMC pour la carte ODROID).

Vous avez deux possibilités : -** vous avez déjà une carte SD préchargée avec le système d'exploitation Poppy (fourni par Generation Robots). You have nothing to install, you are ready to go to the [assembly section](../assembly-guides/README.md).** This is the most common case. - You have an empty SD-card, so you have to [download](burn-an-image-file.md#download-the-image) and [write](burn-an-image-file.md#write-an-image-to-the-sd-card) the operating system on the SD card.

If you are a Linux rocky and want to try yourself our unstable install scripts, you can go the [*install a poppy board*](install-a-poppy-board.md) chapter.

## You want to try Poppy robots in a simulator or in a web viewer

- [Install Poppy softwares on your computer](install-poppy-softwares.md)
- [Install V-REP simulator](install-vrep.md)

## You want to do some advanced stuff with a tangible robot

If you want to install yourself the system of the Poppy robots with our unstable install script: - [Install a Poppy board](install-a-poppy-board.md)

If you want to control a tangible robot from your personal computer, you have to: - [Install Poppy softwares on your computer](install-poppy-softwares.md) - [Check USB to serial drivers](install-drivers.md) if you are on Windows