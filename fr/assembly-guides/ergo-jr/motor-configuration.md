# 3. Configuration des moteurs

L'Ergo Jr est composé de 6 moteurs XL-320 motors du constructeur [Robotis](http://www.robotis.us/dynamixel-xl-320/). Chacun de ces servomoteurs embarque un circuit électronique lui permettant de recevoir différents types de commandes (en position angulaire, en vitesse, ou en force) et de communiquer avec les autres servomoteurs. Ainsi, vous pouvez chaîner plusieurs servomoteurs et tous les commander depuis un seul câble branché au début de la chaîne : chaque servomoteur transmettra les commandes au moteur suivant et ainsi de suite.

<img src="img/assembly/xl_320.jpg" alt="XL320" height="150">

Cependant, avant de pouvoir chainer ces moteurs les uns aux autres, il va falloir d'abord leur attribuer un identifiant unique (càd un nom unique). En sortie d'usine, tous les moteurs ont le même identifiant, ce qu'il faudra donc corriger dans cette section.

Nous vous recommandons de configurer les moteurs en parallèle de l'assemblage mécanique de l'étape suivante. Ce qui signifie que vous ne devriez pas configurer tous les moteurs dans l'étape actuelle : il est seulement nécessaire de lire cette page attentivement et de faire quelques essais de configuration de moteur pour vous faire la main, mais vous configurerez tous les moteurs durant l'étape prochaine. Sachez qu'un moteur peut être reconfiguré autant de fois que vous le souhaitez.

## 3.1. Préparer le matériel

Si vous utilisez Windows (ce n'est pas nécessaire sur GNU/Linux ou Mac OSX), vous devez d'abord **installer Bonjour/Zeroconf ([Lien de téléchargement pour Windows](https://support.apple.com/kb/DL999))** ou bien **avahi** pour pouvoir vous connecter au robot.
Consultez la page [Bonjour/Zeroconf](../../installation/install-zeroconf.md) pour plus de détails.

**Mettez en marche le robot**, avec ou sans moteur connecté :

- connectez le câble Ethernet (RJ45) entre le robot et **vous box Internet ou routeur** 
- connectez l'alimentation secteur

**Note :** Bien qu'il est possible de connecter le câble Ethernet directement entre le robot et votre ordinateur sans utiliser de box/routeur. Mais cette méthode nécessite des étapes de configuration réseau supplémentaire avec [Zeroconf](../../installation/install-zeroconf.md) donc nous ne la recommandons pas au premier abord.

Votre robot démarre ... vérifiez que la LED vert **ACT** de la Raspberry Pi vacille environ 45 secondes. Si ce n'est pas le cas, vérifiez que la carte SD est bien munie d'une image valide du logiciel, ou bien [essayez de la re-flasher](../../installation/burn-an-image-file.md).

## 3.2. Configurer les moteurs un-par-un (cas nominal d'un robot acquis après Octobre 2020)

Depuis votre ordinateur, ouvrez maintenant un navigateur Web (Mozilla Firefox, Chrome, Edge, ...) et chargez l'URL suivante dans la barre d'adresse : [http://poppy.local](http://poppy.local).

La page d'accueil du robot doit apparaître. Si ce n'est pas le cas et qu'une erreur de votre navigateur comme ci-dessous apparaît, vérifiez que vous n'avez pas omis le préfixe **http://**, et vérifiez que [Bonjour](../../installation/install-zeroconf.md) est correctement installé sous Windows. Sur GNU/Linux, il peut être nécessaire de paramétrer le réseau Ethernet en mode "Réseau local seulement". Si le problème persiste, il s'agît d'un problème réseau, testez avec ou sans routeur entre le robot et l'ordinateur, ou avec un autre routeur.

![La page n'existe pas](img/IHM/webpage_not_available.jpg)

La configuration d'un moteur est **une configuration individuelle** pour chaque moteur. Cela signifie que durant la configuration d'un moteur, **seulement le moteur en cours de configuration doit être branché à la Pixl**. Configurer un moteur revient à lui attribuer un nom **m1, m2, m3, m4, m5 ou bien m6** en suivant la convention de nommage suivante :

<img src="img/assembly/motors.png" alt="Liste des noms de moteurs" width="700">

En vue de configurer un moteur, vous aurez à connecter seulement les éléments suivants :
* La Raspberry Pi
* La carte Pixl
* L'alimentation secteur
* 1 seul câble de moteur allant de la carte Pixl jusqu'à l'unique moteur en cours de configuration
* le câble Ethernet connectant votre Raspberry Pi au réseau

Au premier démarrage, un assistant vous guide dans la configuration initiale du robot. Suivez les étapes jusqu'à atteindre **Etape 2 : configuration des moteurs** :

![L'assistant de la configuration moteur](img/IHM/motor_config_assistant.png)

**Note :** Si vous robot affiche une toute autre page mais pas l'assistant, il se peut que vous ayant un ancien logiciel chargé sur votre robot. Dans ce cas consultez la section **3.2.bis.** ci-dessous pour configurer vos moteurs.

Configurons un moteur maintenant : connectez un seul moteur à la carte Pixl, choisissez un nom de moteur dans la liste (par exemple **m5**) et cliquez sur le bouton **Configurer**. Vous verrez un descriptif de ce qu'il se passe s'afficher dessous le bouton. Si aucune erreur ne survient, la dernière ligne doit être **Done!**. Sinon, le détail de l'erreur anglophone peut vous aider à lcoaliser le problème. 

Chaque fois qu'un moteur est correctement configuré, son palonnier (la roue noire) est placée en position zéro, donc si vous voyer tourner c'est généralement bon signe ; mais s'il ne bouge pas ne vous inquiétez pas, il était peut-être déjà en position zéro. Vous aurez besoin de débrancher le moteur pour pouvoir le bouger à la main et le rebrancher si vous souhaitez le voir bouger en position zéro.

Rappelez-vous que vous ne devriez pas configurer tous les moteurs maintenant. Si vous l'avez déjà fait n'ayant pas d'inquiétude, les moteurs peuvent être reconfigurés un nombre de fois illimité si vous avez besoin de recommencer pendant l'étape de construction mécanique qui suit ...

[**>> Etape suivante : construction mécanique**](mechanical-construction.md)

## 3.2.bis. Configurer les moteurs un-par-un (si vous avez une ancienne version de logiciel)

Avant Octobre 2020 l'Ergo Jr n'avait pas d'assistant au premier démarrage, dans ce cas vous voyez directement s'afficher la page d'accueil. Dans ce cas, la configuration  des moteurs se déroule avec l'outil nommé **Poppy Configure**. Suivez ces étapes :

**Ouvrir un terminal**

Premièrement ouvrez la page d'accueil sur **http://poppy.local**, sélectionnez **terminal Python** ou bien **Programmation Python** et ouvrez ensuite **Nouveau terminal** comme montré ci-dessous :

![image](../../img/jupyter/open-terminal.jpg)

Le terminal est l'encart noire qui s'affiche à lécran, dans lequel vous povuez taper des commandes et visualiser leur résultat :
![image](img/IHM/terminal_for_configuration.PNG)

**Configurer un motor**

Pour configurer un moteur avec Poppy Configure, tapez la commande `poppy-configure ergo-jr <nom-du-moteur>` dans laquelle vous remplacez `<nom-du-moteur>` par un nom de moteur entre **m1** et **m6**. Vérifiez qu'aucune erreur n'appraît lorsque la commande se termine et que la dernière ligne est **Done!**.

![image](img/IHM/poppy-configure-terminal-output.png)

[**>> Etape suivante : construction mécanique**](mechanical-construction.md)

