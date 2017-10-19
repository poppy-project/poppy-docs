# Installation

En fonction de ce que vous voulez faire, toutes les sections ci-dessous supposent que vous avez [ le client Zeroconf / Bonjour ](install-zeroconf.md) d'installé sur votre ordinateur. Ce n'est pas obligatoire mais autrement, vous devrez connaitre l'adresse IP de votre robot.

Le projet Poppy est vaste, il y a beaucoup de possibilités de chemins d'installation en fonction de ce que vous voulez faire.

## Vous voulez installer un robot Poppy physique

Les robots Poppy sont contrôlées par un petit ordinateur embarqué : un Raspberry Pi ou une carte ODROID. Le système d'exploitation de ces ordinateurs est stocké sur une carte SD (vous pouvez également utiliser un contrôleur MMC pour la carte ODROID).

Vous avez deux possibilités : -** vous avez déjà une carte SD préchargée avec le système d'exploitation Poppy (fourni par Generation Robots). Vous n'avez rien à installer, vous êtes prêt à aller vers la section [assemblage](../assembly-guides/README.md).** C'est le cas le plus fréquent. - Vous avez une carte SD vierge, vous devez donc [ télécharger ](burn-an-image-file.md#download-the-image) et [graver](burn-an-image-file.md#write-an-image-to-the-sd-card) le système d'exploitation sur la carte SD.

Si vous êtes familier à Linux et que vous voulez essayer vous-même nos scripts d'installation (qui peuvent être instable), vous pouvez vous rendre au chapitre [* installation d'une carte Poppy *](install-a-poppy-board.md).

## Vous voulez essayer des robots Poppy dans un simulateur ou dans le visualiseur web

- [Installation des programmes Poppy sur votre ordinateur](install-poppy-softwares.md)
- [Installation du simulateur V-REP](install-vrep.md)

## Vous voulez réaliser des travaux avancés avec un robot tangible

Si vous voulez installer vous-même le système d'exploitation des robots Poppy avec nos scripts d'installation instables : -[Installation d'une carte Poppy](install-a-poppy-board.md)

Si vous voulez contrôler un robot à partir de votre ordinateur personnel, vous devez: -[installer des logiciels Poppy sur votre ordinateur](install-poppy-softwares.md) -[Installer les drivers USB vers série ](install-drivers.md) si vous êtes sous Windows