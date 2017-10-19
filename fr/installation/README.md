# Installation

En fonction de ce que vous voulez faire, toutes les sections ci-dessous supposent que vous avez [ le client Zeroconf / Bonjour ](install-zeroconf.md) d'installé sur votre ordinateur. Ce n'est pas obligatoire mais autrement, vous devrez connaitre l'adresse IP de votre robot.

Le projet Poppy est vaste, il y a beaucoup de possibilités de chemins d'installation en fonction de ce que vous voulez faire.

## Vous voulez installer un robot Poppy physique

Les robots Poppy sont contrôlées par un petit ordinateur embarqué : un Raspberry Pi ou une carte ODROID. Le système d'exploitation de ces ordinateurs est stocké sur une carte SD (vous pouvez également utiliser un contrôleur MMC pour la carte ODROID).

Vous avez deux possibilités : -** vous avez déjà une carte SD préchargée avec le système d'exploitation Poppy (fourni par Generation Robots). You have nothing to install, you are ready to go to the [assembly section](../assembly-guides/README.md).** This is the most common case. - Vous avez une carte SD vierge, vous devez donc [ télécharger ](burn-an-image-file.md#download-the-image) et [graver](burn-an-image-file.md#write-an-image-to-the-sd-card) le système d'exploitation sur la carte SD.

Si vous êtes familier à Linux et que vous voulez essayer vous-même nos scripts d'installation (qui peuvent être instable), vous pouvez vous rendre au chapitre [* installation d'une carte Poppy *](install-a-poppy-board.md).

## You want to try Poppy robots in a simulator or in a web viewer

- [Installation des programmes Poppy sur votre ordinateur](install-poppy-softwares.md)
- [Installation du simulateur V-REP](install-vrep.md)

## Vous voulez réaliser des travaux avancés avec un robot tangible

Si vous voulez installer vous-même le système d'exploitation des robots Poppy avec nos scripts d'installation instables : -[Installation d'une carte Poppy](install-a-poppy-board.md)

If you want to control a tangible robot from your personal computer, you have to: - [Install Poppy softwares on your computer](install-poppy-softwares.md) - [Check USB to serial drivers](install-drivers.md) if you are on Windows