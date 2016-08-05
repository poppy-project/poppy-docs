# Démarrer et connecter le robot

Dans cette section, nous allons décrire comment démarrer votre robot et vous donner un aperçu des possibilités pour y accéder.

## Configurer le logiciel

Les créatures Poppy viennent avec une carte embarquée dont le travail est de contrôler les moteurs et d'accéder aux senseurs. Pour une plus grande simplicité, cette carte embarquée peut être contactée à travers une interface Web. cela facilite le contrôle du robot depuis votre propre ordinateur ou une tablette sans avoir à télécharger ou installer quoique ce soit.

Il y a plusieurs méthodes pour configurer la carte embarquée de votre robot Poppy :

* [**la méthode simple**](#simplement-utiliser-la-carte-sd-poppy): utilisez une image ISO toute prête et transférez la sur une carte SD
* [**la méthode avancée**](#plus-avance-tout-installer-vous-meme): tout installer vous-même

<!-- TODO: corriger le lien ci-desous pour le setup de la simulation -->

> **Note** Si vous prévoyez d'utiliser un robot simulé, vous devez installer le logiciel sur votre propre ordinauter. Suivez les instructions pour [configurer la simulation](README.md#you-want-to-try-poppy-robots-in-a-simulator-or-in-a-web-viewer).

### Simplement: utiliser la Carte SD Poppy

Le moyen le plus simple et le plus rapide - de loin - est d'utiliser des images ISO déjà faites pour les cartes SD. Ces images ISO viennent avec tout le nécessaire déjà pré-installé pour votre robot Poppy. C'est aussi un bon moyen de vous assurer que vous utilisez exactement le même logiciel que nous Ainsi vous éviterez de nombreux problèmes.

> **Note** Les kits de robotique Poppy viennent avec une carte SD prête à l'emploi. Ainsi vous n'avez rien de spécial à faire.

Les images ISO peuvent être trouvées avec les distributions de chaque créature :

* [pour le Poppy Ergo Jr](https://github.com/poppy-project/poppy-ergo-jr/releases)
* [pour le Torse Poppy](https://github.com/poppy-project/poppy-torso/releases)
* [pour l'Humanoïde Poppy](https://github.com/poppy-project/poppy-humanoid/releases/)

Elles peuvent être écrites sur une carte SD d'au moins 8 Go en utilisant un outil classique. Une fois la carte SD prête, vous n'avez qu'à l'insérer dans votre carte embarquée. Vous pouvez ensuite mettre votre robot sous tension, il devrait démarrer et vous pourrez ainsi vous connecter à son interface web.

> **Info** Plus de détails dans la [section Démarrage](../installation/README.md).

### Plus avancé: tout installer vous-même

La méthode avancée consiste à installer tout le nécessaire depuis zéro. Elle suit la même procédure que nous utilisons pour générer les images ISO pour cartes SD. Nous mentionnons cette méthode car elle peut s'avérer utile si :

* **vous travaillez avec un robot simulé** et vous devez donc installer tout le logiciel nécessaire sur votre ordinateur, cette procédure est un bon endroit pour voir comment le faire sur un Raspberry Pi et l'adapter pour un autre ordinateur,
* vous voulez modifier l'environnement de travail,
* vous voulez simplement comprendre comment tout fonctionne.

> **Attention** Nous essayons de garder cette procédure d'installation aussi générique que possible. Pour autant, certains détails peuvent varier en fonction de votre système d'exploitation ou de votre ordinateur. De plus, l'installation depuis zéro demande quelques connaissances de base pour installer et configurer un environnement Python.

Suivant ce que vous souhaitez accomplir, toutes les étapes ne sont pas nécessairement requises. En particulier, si vous souhaitez contrôler un robot simulé, il suffit d'installer les bibliothèques Python pour Poppy.

> **Info** Plus de détails vous sont fournis dans le chapitre [Installation pour utilisateurs avancés](../installation/README.md).

### Configurer le réseau

Once your Poppy is assembled and its software is ready, the next step is to connect it to a network. The goal is to let you remotely access the robot from your computer or smartphone/tablet, control and program it.

They are two main ways to connect your robot to your computer/tablet/smartphone:
* Connect both the robot and the computer to the same network (e.g. the box of your home or the school network).
* Directly connect your robot to your computer using an ethernet cable.

> **Caution** While directly plugging the robot to a computer works for most users. It seems that in some strange cases it refuses to work.

To find the address of your robot on the network, we use the standard [Zeroconf protocol](https://fr.wikipedia.org/wiki/Zeroconf). It allows you to use the robot hostname: *"poppy.local"* as its address. This should works without any configuration under Mac OS and GNU/Linux. But it required to install [*Bonjour Print Services*](https://support.apple.com/kb/DL999) on Windows.
If you prefer, you can use the IP address assigned to your robot instead. If you are not administrator of your network this can be a tricky information to find. In this case the first procedure should be preferred.

To check that everything is setup correctly, you can go to the following url using your favorite web browser: [http://poppy.local/](http://poppy.local). You can replace *poppy.local* by the IP address of your robot (something similar as http://192.168.0.42).

> **Caution** If you are not familiar with network configuration or have no idea what the previous paragraph poorly tried to explain, you should see with the IT network engineer, how this can be done.


### Use the web interface

The web interface is the central point to control, program and configure your robot. It can be used to:
* Monitor and Control the robot
* Program it in [Snap!](http://snap.berkeley.edu)
* Program it in [Python](https://www.python.org)
* Configure the robot (change its name, enable/disable the camera, update)
* Reset and shutdown the robot

To access this interface, you simply have to go to the URL using your favorite web browser:

* http://poppy.local (if you changed the name of your robot, simply replace *poppy* by its new name)
* or using directly its IP address

You should see something like:

![Home Page](../img/poppy_home.png)
The buttons can be used to navigate to the different features. For instance, if you click on the *Monitor and Control*, you will access the monitor web app:

![Monitor interface](../img/poppy_monitor.png)

This let you turn on/off the motors of your robot, monitor them, and start/stop behaviors.

The *What happened* button is where you should look for more information is something goes wrong. Here is a screenshot of what you should see if everything goes well:

![Screenshot of the web log interface](../img/web-logs.png)
