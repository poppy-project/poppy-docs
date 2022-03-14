# Installer le logiciel Poppy

> **Mise en garde** Si vous souhaitez installer le logiciel d’un robot réel sur une carte embarquée de type Raspberry Pi, allez plutôt au [chapitre de démarrage](burn-an-image-file.md).

Cette section vous guidera pour installer le logiciel Poppy sur votre ordinateur personnel. Elle est utile **seulement** si vous êtes dans l’une de ces situations :
* vous souhaitez contrôler un robot simulé.
* Vous souhaitez contrôler une créature Poppy Torso ou Humanoid depuis votre ordinateur **sans** utiliser la carte Raspberry Pi embarquée dans la tête. Dans ce cas connectez l'adaptateur USB2AX des moteurs directement à votre ordinateur en USB, sans oublier l'alimentation des moteurs via le SMPS2Dynamixel.

Les créatures Poppy sont contrôlées par du code écrit en langage Python. Selon votre système d’exploitation, vous devrez installer Python et dans tous les cas, vous devrez installer les bibliothèques logicielles requises. 

## 1. Installer Python ...
### ... sur Windows

Téléchargez et installez la dernière version de [Python pour Windows (x86-64 executable installer)](https://www.python.org/downloads/windows). Prenez soin de cocher la case **Add Python to PATH** durant l'installation, sinon WIndows ne trouvera pas Python dans les étapes suivantes.

> **Info** Poppy fonctionne avec 3.5.x et versions supérieures. Anaconda et Python 2.x.x ne sont plus supportées depuis pypot >= 4.0.0.

### ... sur Mac OSX

Mac OSX est livré avec une distribution Python installée par défaut. Avant d’installer le logiciel Poppy, vous devez installer le gestionnaire de paquets Python **pip**. Ouvrez un terminal, puis appuyez sur entrée pour exécuter la commande suivante :

```bash
    curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | sudo python
```

## ... sur GNU/Linux (Ubuntu, Fedora, Archlinux ...)

La plupart des distributions GNU/Linux sont déjà équipées de Python, alors il n'y a rien à installer pour Python, continuez à l'étape suivante. Rempalcez juste la commande `pip` par `pip3` qui forcera l'utilisation de Python 3, car certaines distributions possèdent encore Python 2 en plus de Python 3.


### 2. Installer les logiciels Poppy 

Maintenant que Python est installé sur votre système, ouvrez un terminal, puis appuyez sur entrée pour exécuter la commande suivante :


```bash
pip install poppy-torso
```

Cela demande à Python d'installer la bilbiothèque relative à Poppy Ergo Jr.

> **Note** Remplacez « poppy-torso » par « poppy-ergo-jr ou « poppy-humanoid » pour installer respectivement un Poppy Torso ou un Poppy Humanoid


### Mettre à jour le logiciel Poppy sous GNU/Linux

N'effectuez pas cette étape si c'est votre première installation. Si vous avez besoin de mettre à jour vos logiciels Poppy, il est conseillé de mettre à jour "pypot" (la bibliothèque pour le contrôle des moteurs) et le paquet "creature" séparément :

> **Note** Remplacez « poppy-ergo-jr » par « poppy-torso » ou « poppy-humanoid » pour installer respectivement un torse Poppy ou un humanoïde Poppy.

```bash
pip install pypot --upgrade --no-deps
pip install poppy-ergo-jr --upgrade --no-deps
```

> **Info** Pour comprendre les commandes ci-dessus:
- évitez d’utiliser `sudo` si vous utilisez l'environnement Python de votre système d'exploitation, cela pourrait créer des conflits compliqués à résoudre
- l'option *--upgrade* désinstallera l'existant avant de commencer l’installation
- l'option *--no-deps* évitera d’installer les dépendances, c’est utile pour éviter à pip de compiler *scipy* car cela échouera si vous n'avez pas installé les dépendances GCC et Fortran

## C'est fini !

Si vous avez réalisé les étapes 1 et 2 et qu'il n'y a pas eu d'erreur spécifique, Poppy est installé sur votre ordinateur !

Vous pouvez ensuite démarrer les [services Poppy](../software-libraries/poppy-creature.md) pour démarrer en [Scratch](../programming/scratch.html) sur votre ordinateur ou bien vous connecter au robot via [Python](../getting-started/program-the-robot.md).

Toutefois, si votre robot est flambant neuf, il faudra au préalable passer par une [configuration un-à-un des moteurs](../../en/assembly-guides/poppy-torso/addressing_dynamixel.html) avant de programmer en Scratch ou en Python.

