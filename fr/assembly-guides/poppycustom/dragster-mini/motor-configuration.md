# Configuration des moteurs

Le Dragster mini est composé de 6 moteurs XL-320 fabriqués par [Robotis](http://support.robotis.com/en/product/dynamixel/xl-series/xl-320.htm). Chacun de ces servomoteurs possèdent une carte électronique lui permettant de recevoir différents types de commandes (sur sa position, sa vitesse, son couple...) et de communiquer avec d’autres servos. Vous pouvez chaîner ces servomoteurs entre eux et tous les commander depuis un bout de la chaîne.

<img src = "img/assembly/xl_320.jpg" alt = "XL320" height = "150" />

Cependant, pour être connecté et identifié sur le même bus (de données), ils doivent avoir un identifiant unique. Avec la configuration initiale, ils ont tous le même identifiant (ID 1). Dans cette section, nous vous donnerons plus de détails sur la façon dont vous pouvez définir un nouvel identifiant unique pour chacun de vos moteurs.

Nous vous recommandons de configurer des moteurs en parallèle de l’assemblage des pièces du robot. Ce qui signifie qu’avant d’assembler un moteur neuf, vous commencez par le configurer puis le monter sur le reste du robot. Pendant la procédure d'assemblage, nous indiquerons chaque fois qu'il faut configurer un nouveau moteur.

## Allumer le robot

Si vous exécutez Windows ou Linux (si vous êtes sur Mac OSX, le logiciel est déjà présent), vous devrez installer **Bonjour / Zeroconf ([lien de téléchargement pour Windows](https://support.apple.com/kb/DL999))** pour connecter votre robot. En savoir plus sur [Bonjour / Zeroconf protocole ici](../../installation/install-zeroconf.md).

Avant de configurer les moteurs, **activer le robot**

* Connectez le câble Ethernet entre le robot et votre ordinateur (ou votre routeur / box)
* Connectez le câble d'alimentation à la carte Pixl

Vous pouvez maintenant aller sur <http://poppy.local>.

Si vous n'avez pas téléchargé Bonjour correctement, vous recevrez un message d'erreur comme ci-dessous. Si Bonjour est installé et la page n'apparaît toujours pas (après quelques secondes), essayez de réinstaller Bonjour ![Page does not exist](img/HMI/webpage_not_available.jpg)

## Configurer les moteurs

Comme expliqué ci-dessus, tous les moteurs ont le même ID (numéro d'identification du moteur), **vous ne devez connecter les moteurs un à un seulement** sinon vous allez les configurer avec le meme ID et cela empechera le bon fonctionnement du robot.

Votre configuration électronique devrait être la suivante lorsque vous configurez un moteur :

* une Raspberry Pi connectée au câble Ethernet
* le câble Ethernet connecté à l'ordinateur ou au routeur
* une carte Pixl connectée à l'alimentation
* un câble de la carte Pixl au moteur que vous souhaitez configurer

![Configuration des XL-320 ; un moteur à la fois](img/motor_one_by_one.jpg).

### Utilitaire en ligne de commande

Les robots Poppy ont une ligne de commande `poppy-configure` pour les configurer. Pour l'utiliser, vous devez ouvrir un terminal sur le Raspberry Pi.

Tout d'abord, **ouvrez la page http://poppy.local dans votre navigateur**.

Si tout se passe bien, vous devriez voir la page d’accueil du robot :

![Poppy home page](img/HMI/home_page_jupyter.png)

Cliquez sur **"Jupyter - Python"** puis sur le haut à droite cliquez sur "Nouveau" puis "Terminal". <img src = "img / GUI / jupyter_new_terminal.png" alt = "Terminal Jupyter" height = "300" />

C'est ce que le terminal ressemble :

![terminal for configuration](img/HMI/terminal_for_configuration.PNG)

Maintenant que le terminal est ouvert, vous pouvez écrire cette commande à l'intérieur et appuyez sur Entrée pour l'exécuter.

```bash
poppy-configure ergo-jr m1
```

Après quelques secondes, un message devrait apparaître avec marqué "Done" ![terminal for configuration 2](img/GUI/poppy-configure-terminal-output.png)

Bravo! vous avez configuré le moteur m1 !

Une fois configuré, vous pouvez débrancher le moteur du cable et en brancher un autre, jusqu'à les avoir tous configurés. La configuration est sauvegardée dans la mémoire du moteur (eprom).

> **Info** Les moteurs sont appelés m1, m2, m3, m4, w1, w2.

<img src = "img / assembly / motors.png" alt = "Liste des moteurs" height = "300" />