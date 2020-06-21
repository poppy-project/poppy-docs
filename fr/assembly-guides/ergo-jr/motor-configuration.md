# Configuration des moteurs

L'Ergo Jr est composé de 6 moteurs XL-320 fabriqués par [Robotis](http://support.robotis.com/en/product/dynamixel/xl-series/xl-320.htm). Chacun de ces servomoteurs possèdent une carte électronique lui permettant de recevoir différents types de commandes (sur sa position, sa vitesse, son couple...) et de communiquer avec d’autres servos. Vous pouvez chainer ces servomoteurs entre eux et tous les commander depuis un bout de la chaîne.

<img src="img/assembly/xl_320.jpg" alt="XL320" height="150" />

Cependant, afin d’être connecté et identifié sur le même bus (de donnée), ils doivent avoir un identifiant unique. Out of the factory they all set to the same ID (1). Dans cette section, nous vous donnerons plus de détails sur comment vous pouvez définir un nouvel identifiant unique à chacun de vos moteurs.

Nous vous recommandons de configurer des moteurs en parallèle de l’assemblage des pièces du robot. Ce qui signifie qu’avant d’assembler un moteur neuf, vous commencez par le configurer puis le monter sur le reste du robot. Pendant la procédure d'assemblage, nous indiquerons chaque fois qu'il faut configurer un nouveau moteur.

## Allumez le robot

Si vous utilisez Windows ou Linux (ce n'est pas nécessaire sous MacOS), vous aurez d'abord besoin d'installer **le service d'impression Bonjour pour Windows (Zeroconf) ([téléchargement Windows ici](https://support.apple.com/kb/DL999))** ou bien **avahi** pour pouvoir vous connecter au robot. Pour plus de détails consultez la page d'information sur [le protocole Bonjour/Zeroconf](../../installation/install-zeroconf.md).

Pour allumer votre robot avec ou sans moteur connecté :

* Branchez le câble Ethernet (RJ45) fourni du robot préférablement sur votre box Internet ou routeur. Note : Il est aussi possible de connecter ce câble directement à votre ordinateur mais un paramétrage supplémentaire est parfois nécessaire selon votre système d'exploitation pour obtenir une adresse IPv4LL avec Zeroconf donc la première option est préférable
* Branchez l'adptateur secteur sur la carte Pixl

**Note :** Ne branchez JAMAIS une autre alimentation à votre Raspberry Pi (comme un câble micro-USB) si l'adaptateur secteur est branché. 

Votre robot démarre  ... vérifiez que la LED verte ACT vacille durant environ 30 secondes le temps du démarrage, puis sur votre ordinateur vous pouvez ouvrir un navigateur (Firefox, Chrome, Edge, ...) à l'adresse **http://poppy.local**.

Si cette adresse aboutit à une erreur similaire à l'image ci-dessous, vérifiez que vous tapez le préfixe **http://**, et que Bonjour est bien installé sous Windows. Votre configuration réseau pourrait être défectueuse : testez avec un autre routeur ou en connexion directe.

[Page doesn't exist](img/IHM/webpage_not_available.jpg)

## Configurez votre robot

Au premier démarrage, votre robot vous guide pour sa configuration, suivez simplement les étapes. Une étape importante est la configuration des moteurs.

Lors de cette étape, un moteur doit être connecté **seul** à la carte Pixl afin de le configurer avec son nom de moteur **m1, m2, m3, m4, m5 ou m6** comme montré sur le schéma ci-dessous.

<img src="img/assembly/motors.png" alt="Motors list" height="300">

Chaque moteur doit être branché seul et configuré tour-à-tour en sélectionnant son nom et en cliquant sur le bouton **Configurer**. Les moteurs sortis d'usine sont identiques, à vous de vous souvenir quel nom vous avez attribué à chaque moteur pour l'assembler ensuite au bon endroit.

Durant la configuration des moteurs, vous ne devez avoir branché **que** ces éléments :

* la Raspberry Pi
* la carte Pixl avec son adaptateur secteur
* 1 seul câble de moteur (câble noir à 3 fils) partant de la carte Pixl jusqu'à l'unique moteur à configurer
* le câble Ethernet reliant votre Raspberry Pi au réseau

![XL-320 configuration ; one motor at a time](img/motor_one_by_one.jpg).

A la fin de la configuration de chacun des moteurs, vous pouvez les rebrancher normalement avec les câbles de moteurs, chaînés les uns aux autres. Puis, cliquez sur le bouton proposé par l'interface pour tester de faire danser votre robot. Si la danse ne fonctionne pas, reprenez pas-à-pas la configuration individuelle de chacun des moteurs ; aidez-vous également des éventuels messages d'erreurs qui indiquent ce qu'il se passe.

A l'issue de votre première connexion, vous tombez sur la page d'accueil définitive de votre robot. Amusez-vous bien !