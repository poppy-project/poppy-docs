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

The advanced way mainly consists in installing everything needed from scratch. This follows the same procedure as we use to generate the image for SD-cards. We mention this possibilty here as it can be useful if:

* You are **working with a simulated robot** and thus have to manually install all the required software on your computer, this procedure could be a good place to see how this can be done on a Raspberry-Pi and adapted to another computer,
* you want to customize the environment,
* or simply if you like to understand how it works.

> **Caution** We try to keep this installation procedure as generic as possible. Yet, some details may vary depending on your operating system or your computer. Moreover, the installation from scratch required some good knowledge of how to install and setup a python environment.

Depending on what you want to do all steps are not necessary required. In particular, if you want to control a simulated robot, you may just want to install the python libraries for Poppy.

> **Info** More details can be found in the [Installation for advanced users section](../installation/README.md).

### Setup the network

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
