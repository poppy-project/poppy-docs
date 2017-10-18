# Démarrez et connectez le robot

Dans cette section, nous décrirons comment démarrer votre robot et donnerons un aperçu des possibilités d’y accéder.

## Configurer le logiciel

Les robots Poppy sont équipés d'une carte embarquée (exemple : Raspberry Pi, ODROID...) dont le rôle consiste à contrôler les moteurs et à accéder aux capteurs. À des fin de simplicité, on peut accéder à cet ordinateur à distance via une interface web. Il est facile de contrôler le robot à partir de votre propre ordinateur ou tablette sans avoir à télécharger / installer quoi que ce soit.

Il existe deux façons de configurer la carte pour votre robot Poppy: * [**la manière simple**](#easy-and-recommended-way-use-the-poppy-sdcard) : utilisez une image préprogrammée du système d'exploitation Poppy et écrivez-la (installez-la) sur la carte SD* [**la manière difficile pour les utilisateurs avancés**](#advanced-way-diy-install-everything-from-scratch) : installez tout à partir de zéro

> **Note** Si vous envisagez d'utiliser un robot simulé (robot virtuel), vous devez installer le logiciel sur votre ordinateur personnel. Suivez les [instructions pour le paramétrage de la simulation](README.md#you-want-to-try-poppy-robots-in-a-simulator-or-in-a-web-viewer).

### Manière simple et recommandée : utiliser la carte SD Poppy

Le moyen le plus simple et le plus rapide - de loin - est d'utiliser une image système déjà créée pour une carte SD. Les images ISO contiennent tous les éléments pré-installés pour votre robot Poppy. C'est aussi un bon moyen de s'assurer que vous utilisez exactement le même logiciel que nous. Ainsi, vous éviterez la plupart des problèmes.

> **Note** Les kits robotiques Poppy sont livrés avec une carte SD prête à l'emploi. Donc, vous n'avez rien de spécial à faire.

Pour chaque robot Poppy, l'image se trouve sur sa page web de sa dernière version :

* [pour le robot Poppy Ergo Jr](https://github.com/poppy-project/poppy-ergo-jr/releases)
* [pour le robot Poppy Torso](https://github.com/poppy-project/poppy-torso/releases)
* [pour le robot Poppy Humanoid](https://github.com/poppy-project/poppy-humanoid/releases/)

L'image peut être écrite sur une carte SD (d'au moins 8 Go) en utilisant un utilitaire tel qu'Etcher. Une fois que la carte SD est prête, insérez-la dans la carte embarquée (micro-ordinateur). Ensuite, lorsque vous branchez votre robot, il devrait démarrer automatiquement et vous devriez pouvoir vous connecter à son interface web.

> **Info** Vous trouverez plus de détails dans la [section démarrage](../installation/README.md).

### Manière avancée : DIY, installez tout à partir de zéro

La manière avancée consiste principalement à installer tout ce qui est nécessaire à partir de zéro. Cela suit la même procédure que nous utilisons pour générer l'image de cartes SD. Nous mentionnons cette possibilité ici car cela peut être utile si :

* Vous ** travaillez avec un robot simulé** et devez donc installer manuellement tous les logiciels requis sur votre ordinateur, cette procédure vous montre comment cela peut être fait sur un Raspberry-Pi (carte embarquée) et l'adapter à un autre ordinateur,
* vous voulez personnaliser l'environnement,
* ou si vous voulez tout simplement comprendre comment ça fonctionne.

> **Attention** Nous essayons de garder cette procédure d'installation aussi générique que possible. Pourtant, certains détails peuvent varier selon votre système d'exploitation ou votre ordinateur. En outre, l'installation à partir de zéro exige une bonne connaissance de comment installer et configurer un environnement python.

Selon ce que vous voulez faire, toutes les étapes ne sont pas nécessaires. En particulier, si vous souhaitez contrôler un robot simulé, vous pouvez simplement installer les bibliothèques python pour Poppy.

> **Information** Plus de détails peuvent être trouvés dans la section [ Installation pour utilisateurs avancés](../installation/README.md).

### Configuration du réseau

Une fois que votre Poppy est assemblé et son logiciel est prêt, l'étape suivante consiste à le connecter à un réseau. L'objectif est de vous permettre d'accéder à distance au robot à partir de votre ordinateur ou votre smartphone / tablette, le contrôler et le programmer.

They are two main ways to connect your robot to your computer/tablet/smartphone: * Connect both the robot and the computer to the same network (e.g. the box of your home or the school network). * Directly connect your robot to your computer using an ethernet cable.

> **Caution** While directly plugging the robot to a computer works for most users. It seems that in some strange cases it refuses to work.

To find the address of your robot on the network, we use the standard [Zeroconf protocol](https://fr.wikipedia.org/wiki/Zeroconf). It allows you to use the robot hostname: *"poppy.local"* as its address. This should works without any configuration under Mac OS and GNU/Linux. But it required to install [*Bonjour Print Services*](https://support.apple.com/kb/DL999) on Windows. If you prefer, you can use the IP address assigned to your robot instead. If you are not administrator of your network this can be a tricky information to find. In this case the first procedure should be preferred.

To check that everything is setup correctly, you can go to the following url using your favorite web browser: [http://poppy.local/](http://poppy.local). You can replace *poppy.local* by the IP address of your robot (something similar as http://192.168.0.42).

> **Caution** If you are not familiar with network configuration or have no idea what the previous paragraph poorly tried to explain, you should see with the IT network engineer, how this can be done.

### Use the web interface

The web interface is the central point to control, program and configure your robot. It can be used to: * Monitor and Control the robot * Program it in [Snap!](http://snap.berkeley.edu) * Program it in [Python](https://www.python.org) * Configure the robot (change its name, enable/disable the camera, update) * Reset and shutdown the robot

To access this interface, you simply have to go to the URL using your favorite web browser:

* http://poppy.local (if you changed the name of your robot, simply replace *poppy* by its new name)
* or using directly its IP address

You should see something like:

![Home Page](../img/poppy_home.png) The buttons can be used to navigate to the different features. For instance, if you click on the *Monitor and Control*, you will access the monitor web app:

![Monitor interface](../img/poppy_monitor.png)

This let you turn on/off the motors of your robot, monitor them, and start/stop behaviors.

The *What happened* button is where you should look for more information is something goes wrong. Here is a screenshot of what you should see if everything goes well:

![Screenshot of the web log interface](../img/web-logs.png)