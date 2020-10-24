# Flasher le système Poppy sur la carte SD

> **Note** Ce chapitre est réservé aux personnes qui veulent contrôler un robot tangible. Si vous avez l’intention de contrôler un robot simulé par ordinateur, veuillez vous référer au [parcours d’installation pour le simulateur](README.md#you-want-to-try-poppy-robots-in-a-simulator-or-in-a-web-viewer).

Les créatures Poppy sont contrôlées par un petit ordinateur embarqué : un Raspberry Pi ou un Odroid.

Le système d’exploitation de cet ordinateur est stocké sur une carte SD (vous pouvez également utiliser une carte MMC pour le Odroid).

Vous pouvez être dans 2 cas :

- Vous avez déjà une carte SD avec le système d’exploitation Poppy (fournie par l’un des distributeurs de Poppy par exemple). Dans ce cas vous pouvez directement passer [à l'assemblage](../assembly-guides/README.md) sans suivre ce tutoriel
- Vous avez une carte SD vierge ou bien celle-ci nécessite une mise-à-jour du logiciel Poppy. Dans ce cas il faut donc [télécharger](#download-the-image-of-the-operating-system) et [écrire](#write-the-operating-system-image-to-the-sd-card) le système d’exploitation sur la carte SD.

> **Info** Vous devez avoir un ordinateur avec un lecteur de cartes SD pour écrire l’image sur la carte SD.

## 1. Télécharger l’image du système d’exploitation

Il faut choisir l’image système la plus récente disponible, à télécharger selon votre créature Poppy, dans la section **Assets** :

- [Ergo Jr](https://github.com/poppy-project/poppy-ergo-jr/releases/)
- [Poppy Torso](https://github.com/poppy-project/poppy-torso/releases)
- [Poppy Humanoid](https://github.com/poppy-project/poppy-humanoid/releases/)

Si vous hésitez entre plusieurs types de fichiers, prenez note que le fichier qu'il vous faut est un fichier image compressé, d'extension **.img.zip** ou bien **.img.7z**.

## 2. Extraire l'image compressée

Le fichier que vous avez téléchargé est une archive (au format zip ou 7z) d'une image système Poppy.
Le fichier se trouve probablement dans le dossier Téléchargements de votre ordinateur, mais il peut être n'importe où sans problème, sauf sur un disque formaté en FAT32, ce qui causera des erreurs lors de l'extraction.
Extrayez l'image avant de continuer. Quelque chose comme **clic droit sur le fichier > Extraire Ici** convient parfaitement.

## 3. Graver l’image de système d’exploitation sur la carte SD

Muni du fichier image correspondant à votre créature Poppy, vous devez utiliser un outil d’écriture pour l'installer sur votre carte SD.

### 3. Option A : Graver l’image avec Etcher (logiciel avec une interface graphique, le + facile)

- *Téléchargez et installez [Etcher](http://etcher.io/).* Ce logiciel fonctionne sur les systèmes d’exploitation Windows (versions Windows 7 ou ultérieure), MAC OSX et GNU/Linux.

![Etcher](img/etcher.gif)

- Insérez la carte SD dans votre ordinateur.
- Démarrez Etcher
- Sélectionnez le lecteur de carte SD
- Sélectionnez l’image extraite de l'archive, d'extension `.img` (un fichier nommé par exemple `2020-10-23-poppy-ergo-jr.img`)
- Démarrez l'écriture.
- L’image écrite sur votre carte sera vérifiée automatiquement à la fin de l'opération.

S'il n'y a pas d'erreur votre carte SD est prête avec le tout dernier système POppy et vous pouvez maintenant [assembler votre robot](../assembly-guides/README.md) !

### 3. Option B : Graver l’image avec `dd` (logiciel en ligne de commande, pour les experts)

> **Danger** Cette méthode fonctionne uniquement pour GNU/Linux et les systèmes d’exploitation OSX et n’est pas recommandée si vous ne comprenez pas ce que vous faites.

Insérez la carte SD et chercher où votre carte SD est montée (/dev/mmcblk0 et/dev/disk2 dans l’exemple qui suit). Adaptez à votre cas et exécutez une de ces commandes. *Soyez prudent, vous pourriez effacer l’une de vos partitions disques si vous ne comprenez pas ce que vous faites*.

Si vous êtes sur un système d’exploitation GNU/Linux :

```bash
sudo dd bs=1M status=progress if=poppy-ergojr.img of=/dev/mmcblk0
```

Si vous utilisez OSX ou un autre système d'exploitation basé sur BSD :

```bash
sudo dd bs=1M status=progress if=poppy-ergojr.img of=/dev/rdisk2
```

- Exécuter la commande `sync` ; cela garantira que le cache d’écriture est vidé et qu’il est possible de démonter votre carte SD sans causer de corruption des données.

- Retirez la carte SD du lecteur de carte.

S'il n'y a pas d'erreur votre carte SD est prête avec le tout dernier système Poppy et vous pouvez maintenant [assembler votre robot](../assembly-guides/README.md) !