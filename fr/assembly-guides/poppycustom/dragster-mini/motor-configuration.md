# Configuration des moteurs

Le Dragster mini est composé de 6 moteurs XL-320 fabriqués par [Robotis](http://support.robotis.com/en/product/dynamixel/xl-series/xl-320.htm). Chacun de ces servomoteurs possèdent une carte électronique lui permettant de recevoir différents types de commandes (sur sa position, sa vitesse, son couple...) et de communiquer avec d’autres servos. Vous pouvez chainer ces servomoteurs entre eux et tous les commander depuis un bout de la chaîne.

<img src="img/assembly/xl_320.jpg" alt="XL320" height="150" />

Cependant, afin d’être connecté et identifié sur le même bus (de donnée), ils doivent avoir un identifiant unique. Avec la configuration de départ, ils ont tous le meme identifiant (ID 1). Dans cette section, nous vous donnerons plus de détails sur comment vous pouvez définir un nouvel identifiant unique à chacun de vos moteurs.

Nous vous recommandons de configurer des moteurs en parallèle de l’assemblage des pièces du robot. Ce qui signifie qu’avant d’assembler un moteur neuf, vous commencez par le configurer puis le monter sur le reste du robot. Pendant la procédure d'assemblage, nous indiquerons chaque fois qu'il faut configurer un nouveau moteur.

## Allumer le robot

Si vous etes sous Windows ou Linux (si vous etes sous Mac OSX, le logiciel est déjà présent) vous aurez besoin d'installer **Bonjour/Zeroconf ([download link for Windows](https://support.apple.com/kb/DL999))** pour connecter votre robot. En savoir plus sur [Bonjour/Zeroconf protocol ici](../../installation/install-zeroconf.md).

Avant de configurer les moteurs, **allumez le robot**

* Branchez le cable Ethernet entre robot et votre ordinateur (ou votre router/box)
* Branchez le cable d'alimentation à la carte Pixl

Maintenant vous pouvez aller sur <http://poppy.local>.

Si vous n'avez pas téléchargé correctement Bonjour, vous aurez un message d'erreur comme ci dessous. Si Bonjour est installé et que la page ne s'affiche toujours pas (apres avoir attendu quelques secondes), essayez de réinstaller Bonjour ![Page doesn't exist](img/IHM/webpage_not_available.jpg)

## Configurer les moteurs

Comme expliqué plus haut, tous les moteurs ont le meme ID (numero d'identification du moteur), **vous ne devez connecter les moteurs un à un seulement** sinon vous allez les configurer avec le meme ID et cela empechera le bon fonctionnement du robot.

Votre setup electronique doit etre de la sorte lorsque vous configurez un moteur :

* une Raspberry Pi connectée au cable Ethernet
* le cable Ethernet connecté à l'ordinateur ou au routeur
* une carte Pixl connectée à l'alimentation
* un cable allant de la carte Pixl au moteur que vous voulez configurer


![XL-320 configuration ; one motor at a time](img/motor_one_by_one.jpg).

### Utilitaire en ligne de commande

Les robots poppy ont une ligne de commande `poppy-configure` permettant de les configurer. Pour l'utiliser, il faut ouvrir un terminal sur la Raspberry Pi.

Tout d'abord, **ouvrez la page http://poppy.local dans votre navigateur**.

Si tout se passe bien, vous devriez voir la page d'acceuil Poppy:

![Poppy home page](img/IHM/home_page_jupyter.png)

Cliquez sur **"Jupyter — Python"** puis en haut à droite cliquez sur "New" puis "Terminal". <img src="img/IHM/jupyter_new_terminal.png" alt="Terminal Jupyter" height="300" />

Voici à quoi ressemble le terminal que vous devriez obtenir:

![terminal for configuration](img/IHM/terminal_for_configuration.PNG)

Maintenant que le terminal est ouvert, vous pouvez écrire cette commande à l'interieur et appuyer sur entrer pour l'exécuter.
```bash
poppy-configure ergo-jr m1
```

Apres quelques secondes, un message devrait apparaitre avec marqué "Done"
![terminal for configuration 2](img/IHM/poppy-configure-terminal-output.png)

Bravo ! vous avez configuré le moteur m1 !

Une fois configuré, vous pouvez débrancher le moteur du cable et en brancher un autre, jusqu'à les avoir tous configurés. La configuration est enregistrée dans la memoire du moteur (eprom).

> **Info** Les moteurs sont appelés m1, m2, m3, m4, w1, w2. 

<img src="img/assembly/motors.png" alt="Motors list" height="300" />