# Démarrez et connectez le robot

Dans cette section, nous décrirons comment démarrer votre robot et donnerons un aperçu des possibilités d’y accéder.

## Configurer le logiciel

Les robots Poppy sont équipés d'une carte embarquée (exemple : Raspberry Pi, ODROID...) dont le rôle consiste à contrôler les moteurs et à accéder aux capteurs. À des fin de simplicité, on peut accéder à cet ordinateur à distance via une interface web. Il est facile de contrôler le robot à partir de votre propre ordinateur ou tablette sans avoir à télécharger / installer quoi que ce soit.

Il existe deux façons de configurer la carte pour votre robot Poppy: * [**la manière simple**](#manière-simple-et-recommandée--utiliser-la-carte-sd-poppy) : utilisez une image préprogrammée du système d'exploitation Poppy et écrivez-la (installez-la) sur la carte SD* [**la manière difficile pour les utilisateurs avancés**](#manière-avancée--diy-installez-tout-à-partir-de-zéro) : installez tout à partir de zéro

> **Note** Si vous envisagez d'utiliser un robot simulé (robot virtuel), vous devez installer le logiciel sur votre ordinateur personnel. Suivez les [instructions pour le paramétrage de la simulation](../installation/install-vrep.md).

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

### Configuration du réseau Wifi ou Ethernet

Une fois que votre Poppy est assemblé et son logiciel est prêt, l'étape suivante consiste à le connecter à un réseau. L'objectif est de vous permettre d'accéder à distance au robot à partir de votre ordinateur ou votre smartphone / tablette, le contrôler et le programmer.

Il y a 4 méthodes principales de connecter votre robot à votre ordinateur / tablette / smartphone :
* Connecter votre ordinateur en Wifi au hotspot du robot **Poppy-Hotspot**, avec la clé Wifi **poppyproject** (le plus facile, mais ne donne pas accès à Internet)
* Connecter votre robot en Wifi à votre routeur (par exemple, la box internet de votre maison ou le réseau de l'école). Cela nécessite néanmoins d'avoir une première fois accès à l'interface de réglages du robot via une autre méthode pour lui indiquer le nom du réseau et la clé Wifi
* Connecter le câble RJ45 (Ethernet) fourni à un routeur disposant d'un serveur DHCP (c'est le cas de toutes les box Internet et sur la plupart des réseaux d'entreprise, mais dans ce dernier cas il pourrait y avoir aussi un contrôle d'accès n'autorisant que les ordinateurs connu à se connecter) 
* Connecter directement votre robot à votre ordinateur à l'aide du câble RJ45 fourni (une configuration plutôt pratique, mais qui créé parfois des complications dans le paramétrage réseau selon votre système d'exploitation et vos logiciels installés)

Une fois que vous êtes connecté via une de ces méthodes, pour trouver l'adresse de votre robot sur le réseau, nous utilisons le protocole Zeroconf. Il vous permet d'utiliser le nom d'hôte du robot: *"poppy.local"* comme adresse dans votre navigateur. Cela devrait fonctionner sans aucune configuration sous Mac OS et GNU/Linux. Mais il faudra installer les[*services d'impression Bonjour pour*](https://support.apple.com/kb/DL999) Windows. Si vous préférez, vous pouvez utiliser l'adresse IP attribuée à votre robot à la place. Si vous n'êtes pas l'administrateur de votre réseau, cela peut être une information difficile à trouver. Dans ce cas, la première procédure devrait être privilégiée.</p> 

Pour vérifier que tout est correctement configuré, vous pouvez accéder à l'url suivante en utilisant votre navigateur Web préféré: [http://poppy.local/](http://poppy.local). Vous pouvez remplacer *poppy.local* par l'adresse IP de votre robot (quelque chose de similaire à http://192.168.0.42).

> **Attention** Si vous n'êtes pas familier avec la configuration du réseau ou si vous n'avez aucune idée de ce que le paragraphe précédent a mal essayer d'expliquer, vous devriez voir avec l'ingénieur du réseau informatique, comment cela peut être fait.

### Utiliser l'interface web

L'interface web est le point central pour contrôler, programmer et configurer votre robot. Il peut être utilisé pour:
* contrôler le robot
* Programmer le robot avec [Scratch](https://scratch.mit.edu/), [Snap!](http://snap.berkeley.edu) ou [Python](https://www.python.org).
* Configurer le robot (changer son nom, configurer le wifi, activer/désactiver la caméra, faire une mise à jour, redémarrer le robot)
* Accéder au fichiers du robot
* Lire la doc
* Observer les logs
* Éteindre le robot

Pour accéder à cette interface web, il vous suffit dans votre navigateur Web d'aller sur l'URL:

* [http://poppy.local](http://poppy.local) (si vous avez changé le nom de votre robot, remplacez simplement *poppy* par son nouveau nom)
* ou en utilisant directement l'adresse IP du robot

Vous devriez voir quelque chose comme :

![Page d'accueil](../img/poppy_home.png) Les boutons permettent d'accéder aux différentes fonctionnalités. Par exemple, si vous cliquez sur *Monitor and Control*, vous accédez à l'application web du moniteur :

![Interface du moniteur](../img/poppy_monitor.png)

Cela vous permet d’activer / désactiver les moteurs de votre robot, de les surveiller et de commencer / arrêter les comportements.

Le bouton *What happened* c'est où vous devriez regarder pour plus d'informations si quelque chose qui ne va pas. Voici une capture d'écran de ce que vous devriez voir si tout va bien :

![Capture d'écran du rapport d'erreur](../img/web-logs.png)