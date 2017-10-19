# Démarrer avec un robot Poppy

> **Note** Ce chapitre est réservé aux personnes qui veulent contrôler un robot tangible. Si vous avez l’intention de contrôler un robot simulé par ordinateur, veuillez vous référer au [parcours d’installation pour le simulateur](README.md#you-want-to-try-poppy-robots-in-a-simulator-or-in-a-web-viewer).

Les créatures Poppy sont contrôlées par un petit ordinateur embarqué : un Raspberry Pi ou un Odroid.

Le système d’exploitation de cet ordinateur est stocké sur une carte SD (vous pouvez également utiliser une carte MMC pour le Odroid).

Vous pouvez être dans deux types de cas :

- Vous avez déjà une carte SD avec le système d’exploitation Poppy (fournie par l’un des distributeurs de Poppy par exemple). Vous êtes prêt à passer à la [section montage](../assembly-guides/ergo-jr.md).
- Vous avez une carte SD vierge, il faut donc [télécharger](#download-the-image-of-the-operating-system) et [écrire](#write-the-operating-system-image-to-the-sd-card) le système d’exploitation sur la carte SD.

> **Info** Le système d’exploitation de créatures Poppy utilise une distribution GNU/Linux, mais vous n’aurez pas besoin de connaissances avancées sur Linux pour installer l’image sur le Raspberry Pi. Vous devez seulement avoir un ordinateur avec un lecteur de cartes SD pour écrire l’image sur la carte SD.

## Télécharger l’image du système d’exploitation

Il faut choisir l’image (fichier en `*. img.zip`) à télécharger selon la créature Poppy et la carte contrôleur souhaitée :

- [Ergo Jr](https://github.com/poppy-project/poppy-ergo-jr/releases/)
- [Poppy Torso](https://github.com/poppy-project/poppy-torso/releases)
- [Poppy Humanoid](https://github.com/poppy-project/poppy-humanoid/releases/)

## Graver l’image de système d’exploitation sur la carte SD

Muni du fichier image correspondant à votre créature Poppy, vous devez utiliser un outil d’écriture pour l'installer sur votre carte SD.

### Graver l’image avec Etcher (logiciel avec une interface graphique)

- *Téléchargez et installez [Etcher](http://etcher.io/).* Ce logiciel fonctionne sur les systèmes d’exploitation Windows (versions Windows 7 ou ultérieure), MAC OSX et GNU/Linux.

![Etcher](img/etcher.gif) - Insérez la carte SD dans votre ordinateur. -Démarrez Etcher, sélectionnez le lecteur de carte SD, sélectionnez l’image (un fichier nommé par exemple `2017-04-13-poppy-ergo-jr.img.zip`). Démarrez l'écriture. L’image écrite sur votre carte sera vérifiée automatiquement à la fin de l'opération.

Vous êtes maintenant prêt à [assembler votre robot](../assembly-guides/ergo-jr.md) !

### Graver l’image avec `dd` (logiciel en ligne de commande)

> **Danger** Cette méthode fonctionne uniquement pour GNU/Linux et les systèmes d’exploitation OSX et n’est pas recommandée si vous ne comprenez pas ce que vous faites.

Insérez la carte SD et chercher où votre carte SD est montée (/dev/mmcblk0 et/dev/disk2 dans l’exemple qui suit). Adaptez à votre cas et exécutez une de ces commandes. *Soyez prudent, vous pourriez effacer l’une de vos partitions disques si vous ne comprenez pas ce que vous faites*.

Si vous êtes sur un système d’exploitation GNU/Linux :

```bash
sudo dd bs=4M if=poppy-ergojr.img of=/dev/mmcblk0
```

Si vous utilisez OSX ou un autre système d'exploitation basé sur BSD :

```bash
sudo dd bs=4m if=poppy-ergojr.img of=/dev/rdisk2
```

> **Info** La commande `dd` ne donne aucune information sur sa progression et donc peut donner l'impression d’être gelée ; cela peut prendre plus de cinq minutes pour terminer l'écriture de la carte. Pour voir l’état d’avancement de l’opération d'écriture, vous pouvez exécuter `sudo pkill -USR1 - n - x JJ` dans un autre terminal.

- Run `sync`; this will ensure the write cache is flushed and that it is safe to unmount your SD card.

- Remove the SD card from the card reader.

Now you are ready to [assemble your robot](../assembly-guides/ergo-jr.md)!