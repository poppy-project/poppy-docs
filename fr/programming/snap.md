# Programmer Poppy avec Snap

<!-- toc -->

Snap est un langage de programmation visuel permettant de créer des animations et jeux interactifs, et bien plus. Il est directement inspiré de Scratch et permet les mêmes fonctionnalités.

C'est le langage de programmation visuel de votre robot Poppy, qui permet aux débutants de découvrir des concepts de logique mathématique et de programmation informatique grâce à des activités ludiques et accessibles.

Cette courte introduction est librement inspirée du cours ["Beauty and Joy of Computing"](http://bjc.edc.org/bjc-r/course/bjc4nyc_2015-2016.html) (BJC: Beauté et joie de la calculabilité) de l'Université de Berkeley.

### 1. Démarrer Snap sur votre robot

#### 1.a. Si vous n'avez pas de robot mais souhaitez en simuler un avec poppy-simu

Il n'est **même pas nécessaire d'avoir un vrai robot Poppy** entre vos mains pour programmer un robot avec Snap ! Vous pourrez ainsi vous entrainer avant d'avoir un robot tangible. Nous allons utiliser un visualisateur de robot nommé poppy-simu.

> **Warning** poppy-simu est seulement compatible avec poppy-ergo-jr. Les autres créatures nécessitent une simulation dans CoppeliaSim (cf 1.c)

Il vous suffit d'ouvrir dans 2 onglets différents de votre navigateur :
* L'interface de programmation Snap sur ***[simu.poppy-project.org/snap/](http://simu.poppy-project.org/snap/#open:https://raw.githubusercontent.com/poppy-project/pypot/master/pypot/server/snap_projects/pypot-snap-blocks.xml)** 
* Et le visualisateur de robot sur **[simu.poppy-project.org/poppy-ergo-jr](http://simu.poppy-project.org/poppy-ergo-jr)**.

Passez ensuite au titre 2 ci-dessous pour découvrir l'interface Snap.

#### 1.b. Si vous avez un robot tangible entre les mains

Si vous avez déjà démarré votre robot vous connaissez la page `http://poppy.local`. Si vous ne parvenez pas ou plus à charger cette page reprenez l'étape de connexion du [guide d'assemblage](../../fr/assembly-guides/).

Cliquez simplement sur le bouton **Programmation** puis "Snap" pour démarrer Snap sur votre robot tangible.

Si vous venez de démarrer votre robot une popup vous indique que l'API de votre robot est arrêtée et doit être démarrée pour faire fonctionner Snap. Cliquez simplement sur le bouton proposé pour la démarrer.

Vous pouvez ensuite charger un projet Poppy : **Cliquez sur l'icône `Fichier` puis `Open (Ouvrir)` puis `Examples (Exemples)` puis ouvrez l'un des projets Poppy**. Cela peut prendre 5 à 15 secondes pour le charger.

Passez ensuite au titre 2 ci-dessous pour découvrir l'interface Snap.

#### 1.c. Si vous voulez simuler aussi l'environnement physique avec CoppeliaSim (avancé)

Cette option est réservée aux utilisateurs avancés qui veulent non seulement simuler le robot mais aussi les interactions physiques avec son environnement tel que des balles et des cubes qui pourraient s'entrechoquer via des forces physiques. Poppy utilise le simulateur physique nommé CoppeliaSim.

> **Info** Il est d'abord nécessaire avoir installé les bibliothèques Poppy ainsi que CoppeliaSim sur votre ordinateur, consultez [le chapitre d'installation](../installation/install-poppy-softwares.md).

Ouvrez d'abord CoppeliaSim.

Pour lancer le Snap et le connecter à CoppeliaSim, utilisez [poppy-service](../software-libraries/poppy-creature.md#poppy-services). Ouvrez votre terminal système Windows, OX ou Linux puis copiez/collez la commande :

```bash
poppy-services poppy-ergo-jr --snap --vrep
```

*Si nécessaire, substituez 'poppy-ergo-jr' par 'poppy-humanoid' ou 'poppy-torso' pour simuler respectivement un Poppy Humanoid ou un Poppy Torso*.

Au premier démarrage, un téléchargement automatique de Snap est nécessaire, si vous êtes connecté à Internet il suffit de le laisser fonctionner seul.

Quand le téléchargement est effectué, un onglet Snap s'ouvrira dans votre navigateur Vous pouvez aussi ouvrir Snap pour simulateur sur [simu.poppy-project.org/snap/](http://simu.poppy-project.org/snap/#open:https://raw.githubusercontent.com/poppy-project/pypot/master/pypot/server/snap_projects/pypot-snap-blocks.xml)

A présent tout ce que vous ferez dans Snap fera bouger votre robot simulé dans CoppeliaSim.

> **Attention** Toutes les popup d'information du simulateur vont mettre en pause la connexion avec Snap. Dans ce cas vous pourriez avoir besoin de tuer poppy-services avec les touches Ctrl+C puis les redémarrer.

Notez que vous pourriez aussi démarrer poppy-simu de la même manière que pour CoppeliaSim :
```bash
poppy-services poppy-ergo-jr --snap --poppy-simu
```
poppy-simu est beaucoup plus léger et simple que CoppeliaSim, mais il n'est pas capable de simuler l'environnement physique autour du robot.

### 2. Découverte de l'interface de programmation

### Ouvrir un projet Snap

Quand vous créer un programme Snap, vous pouvez enregistrer et recharger votre programmer dans un fichier-projet pour le retrouver plus tard. La première chose à faire est d'ouvrir un fichier-projet Poppy si ce n'est pas déjà fait : **Cliquez sur l'icône `Fichier` puis `Open (Ouvrir)` puis `Examples (Exemples)` puis ouvrez l'un des projets Poppy**. La toute première fois ouvrir un fichier d'exemple et plus tard vous rouvrirez vos propres fichiers projets que vous aurez sauvegardés.

### Sauvegarder un projet Snap

Il y a 3 façons de sauvegarder en cliquant sur l'icône `Fichier` en haut à gauche de l'itnerface graphique Snap :

#### Enregistrer le projet dans le navigateur
![Cliquer sur Save (Sauvegarder)](../img/snap/snap_save.png)

Cliquez simplement sur `Save (Sauvegarder)`. Ce programme pourra ensuite être rechargé depuis le même ordinateur et le même navigateur. Il existe un risque que ce programme soit effacé si vous utilisez la fonciton "Supprimer mes traces de navigation ou cookies" de votre navigateur.

#### Le cloud Snap

Snap vous permet d'enregistrer votre programme sur son cloud, ce qui nécessite de créer un compte. Cela a l'avantage de vous permettre de pouvoir repartager de programme à d'autres personnes en leur communiquant tout simplement le lien vers votre cloud.

##### Créer un compte sur le cloud Snap

Cliquer sur le bouton -> "signup...".

![Create account](../img/snap/snap_cloud_1.png)

Complétez les champs demandés.

![Create account](../img/snap/dialog-cloud-signup.png)

Vous recevrez un e-mail de validation avec un mot de passe aléatoire imposé. Vous pouvez ensuite vous connecter avec ce mot de passe.

![Login1](../img/snap/snap_login1.png)

Il est pratique de cocher la case permettant de rester connecté à votre compte cloud sur votre ordinateur.

![Login2](../img/snap/snap_login2.png)

Vous pouvez aussi changer de mot de passe pour en mettre un plus aisé à retenir.
![Create account](../img/snap/logout-menu.png)

##### Partager votre projet Snap

Le principal avantage du cloud SNap est de vous permettre de partager votre projet avec quelqu'un d'autre en partageant un lien. Vous devez d'abord être connecté à votre compte.

Puis allez dans le menu `Open (Ouvrir)`

![Open menu](../img/snap/snap_open.png)

Dans la section "cloud", sélectionnez le projet à partager puis cliquez sur `Share (Partager)`.

![Share](../img/snap/snap_cloud_3.png)

Cliquez de nouveau sur `Open (Ouvrir)` ...

![Open share](../img/snap/snap_cloud_4.png)

... puis vous pourrez visualiser et partage votre lien à diffuser à vos collègues ou élèves par un simple copier/coller !
![Sharing URL](../img/snap/snap_cloud_5.png)

Lorsque quelqu'un ouvrira votre projet de votre cloud, votre projet s'ouvrira en plein écran sur la zone de droite nommée "Sprite". Cliquez sur la double-flèche pour restaurer l'interface de programmation Snap habituelle.

 ![Sharing URL](../img/snap/snap_share_full_screen.png)

#### Importer/Exporter votre projet Snap

L'import/export est la façon la plus basique de sauvegarde et réouverture d'un projet Snap via un fichier, tout comme vous sauvegarderiez et réouvririez un document dans un traitement de texte, sauf que c'est un projet Snap pour Poppy !

![Export section](../img/snap/snap_cloud_5.png)

Les fichiers projet Snap sont de type XML (ils se terminent par `.xml`). N'essayez pas d'ouvrir ce fichier en le chargeant dans votre navigateur, vous verriez son contenu complètement illisible pour un être humain.

![Export section](../img/snap/snap_xml_save_as.png)

Si vous voyez le contenu du fichier alors que vous essayez de le sauvegarder néanmoins, faîtes juste un clic droit au milieu du texte puis cliquez sur "Enregistrer sous". Le fichier que vous enregistrerez est un export de votre projet Snap !

Lorsque vous souhaitez réouvrir ce projet (importer), ne double-cliquez pas dessus mais ouvrez Snap comme précédemment expliqué puis allez dans le menu d'import de projet de l'icône `Fichier` :

![import section](../img/snap/snap_import.png)

### Chercher les blocs qui concernent Poppy

Snap possède dans la barre de gauche tous les blocs qui permettent de programmer Poppy ... et bien plus ! Pour y voir plus clair, ils sont organisé en catégories de couleur. La catégorie jaune `Control (Contrôle)` comprend une bonne partie des blocs qui permettent de contrôler Poppy.

Il est également pratique de taper Ctrl+F ou bien de cliquer sur "Find blocks" pour de taper un mot et ainsi filtrer tous les blocs pour trouver celui que vous cherchez.

![find blocks](../img/snap/find_blocks.png)
![find blocks](../img/snap/find_blocks2.png)

<!-- ### First steps with Snap_!_ and a Poppy creature

#### Test the connection between Snap_!_ and your creature

 -->

#### Tester la communication avec le robot

Cliquer sur le bloc "test connection". ![test connection](../img/snap/test_connection.png) est pratique pour vérifier que tout va bien au tout début.

Il doit afficher une bulle "Connection OK". S'il affiche "You may have connection troubles", alors vous avez surement oublié de démarrer l'API du robot dans l'en-tête de la page ou bien si vous utilisez un simulateur la variables "host" pourrait être incorrecte. 

![test connection3](../img/snap/test_connection3.png).

### Liste des blocs pour contrôler Poppy

Pour programmer votre robot Poppy avec Snap, vous pouvez utiliser les blocs suivants provenant de la liste à gauche, les faire glisser dans l'espace de composition du programme au centre et les imbriquer les uns dans les autres ou les uns à la suite des autres pour créer le comportement logique souhaité de votre robot.

Pour mieux les comprendre en détail, il est conseillé de suivre [le livret d'activités pédagogiques fourni avec votre robot](https://www.poppy-education.org/wp-content/uploads/2020/08/Apprendre-a-programmer-Poppy-Ergo-Jr-en-Snap.pdf) puis ensuite suivre les [activités avancées en ligne](https://www.poppy-education.org/activites/initiation-ergo-jr-et-snap/).

|                                                            | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ---------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![](../img/snap/snap_blocks/test_connection.png)           | Le bloc à cliquer en premier pour tester la communication avec le robot.                                                                                                                                                                                                                                                                                                                                                                                                             |
| ![](../img/snap/snap_blocks/set_motors_compliant.png)      | Passer un ou plusieurs moteurs en mode flexible (compliant) ou rigide (stiff). Si vous souhaiter bouger un moteur manuellement il doit être mou, alors que si vous souhaitez le bouger via des blocs Snap il doit être rigide. Vous devez taper le nom d'un moteur ou bien fournir une list des moteurs à passer en flexible ou rigide, grâce au bloc "list"
                                                         |
| ![](../img/snap/snap_blocks/set_position.png)              | Bouger un ou plusieurs moteur à une certainement position angulaire en lui fournissant un angle cible en degrés. Le champ “motor(s)” accepte : - le nom d'un unique moteur ( par ex **m1**) - une série de plusieurs noms de moteurs séparés par des espaces (par ex **m1 m2 m3 m4**) - un bloc Snap de type "list" comme par ex "$robot all motors". “Wait” peut être activé ou désactiver selon s'il faut attendre que le mouvement soit terminé ou non pour passer au bloc suivant." |
                                                                                                              |
| ![](../img/snap/snap_blocks/set_led.png)                   | Changer la couleur de LED d'un ou plusieurs moteurs. Le champs “motor(s)” accepte : - le nom d'un unique moteur ( par ex **m1**) - une série de plusieurs noms de moteurs séparés par des espaces (par ex **m1 m2 m3 m4**) - un bloc Snap de type "list" comme par ex "$robot all motors".
                           |
| ![](../img/snap/snap_blocks/play_move_reporter.png)        | Rejouer le mouvement enregistré sous le nom spécifié en indiquant la vitesse de lecture (1 pour garder la même vitesse, 0.5 pour allez 2 fois plus lentement ou 2 pour aller 2 fois plus vite).                                                                                                                                                                                                                                                                                               |
| ![](../img/snap/snap_blocks/sequence.png)                  | Jouer simultanément une série de mouvements.                                                                                                                                                          |
| ![](../img/snap/snap_blocks/concurrent.png)                | Jouer consécutiement les uns après les autres une série de mouvements.                                                                                                                                                                                                           |
| ![](../img/snap/snap_blocks/create_and_start_record.png)   | Démarrer l'enregistrement d'un mouvement sous un certain nom (n'oubliez pas d'arrêter l'enregistrement !)   |
| ![](../img/snap/snap_blocks/stop_record_and_save_move.png) | Arrêter l'enregistrement et le sauvegarder sous le nom spécifié.                                                                                                                                                                                                                                                                                                           |
| ![](../img/snap/snap_blocks/stop_move.png)                 | Arrêter un mouvement en cours de rejeu.                                                                                                                                                                                                                                                                                                                                                                                   |
| ![](../img/snap/snap_blocks/play_concurently_moves.png)    | Jouer les mouvements en même temps                                                                                                                                                                                                                                                    |
|                                                            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ![](../img/snap/snap_blocks/play_sequentially_moves.png)   | Jouer les mouvements les uns à la luiste des autres                                                                                                                                                                                                                                                                                        |
| ![](../img/snap/snap_blocks/start_behaviours.png)          | Démarrer/Arrêter/ettre en Pause/ ou Reprendre un comportement préenregistré dans le robot. Les comportements sont soit des mouvements, soit des positions cibles, soit des analyses de caméra, soit des boucles sensorimotrices (qui connectent les moteurs sur des capteurs)..                                                                                                                                                                                                                                                                                                                                |
| ![](../img/snap/snap_blocks/play_move_in_reverse.png)      | Jouer un mouvement à l'envers à la vitesse indiquée                                                                                                                                                                                                                                                                                                                                                                 |
| ![](../img/snap/snap_blocks/play_move_command.png)         | Jouer un mouvement à la vitesse indiquée                                                                                                                                                                                                                                                                                                                                       |
| ![](../img/snap/snap_blocks/motors_in_group.png)           | Retourne les moteurs appartenant à un groupe..                                                                                                                                                                                                                                                                                                                                                                            |
| ![](../img/snap/snap_blocks/all_motors.png)                | Groupe de tous les noms de moteur du robot                                                                                                                                                                                                                                                                                                                                                                                                                       |                                                                                                                                                                                                                                                  |
| ![](../img/snap/snap_blocks/get_all_motors_position.png)   | Donne la position actuelle de tous les moteurs. Très utile pour enregistrer la position actuelle de tout le robot.                                                                                                                                                                                                                                                                                          |
| ![](../img/snap/snap_blocks/index_of_motor.png)            | Retourne l'indice d'un nom de moteur dans la liste "all motors" list.                                                                                                                                                                                                                                                                                                                                                                                                                |
| ![](../img/snap/snap_blocks/all_recorded_moves.png)        | Donne tous les noms de mouvements enregistrés                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ![](../img/snap/snap_blocks/get_all_behaviours.png)        | Donne la liste de tous les comportements actuellement démarrés .                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ![](../img/snap/snap_blocks/get_all_motors.png)                          | Donne la liste de tous les groupes moteurs.                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ![](../img/snap/snap_blocks/get_function_of_behaviour.png) | Donne toutes les fonctions qui peuvent être utilisées dans un comportement (avancé)                                                                                                                                                                                                                                                                                                                                                                                      |
| ![](../img/snap/snap_blocks/card_is_detected.png)          | Renvoie VRAI ou FAUX selon si le QR Code de la carte choisie est actuellement dé&tecté devant la caméra.  [QR Codes à télécharger ici](https://aws1.discourse-cdn.com/free1/uploads/poppy/original/2X/c/c5c28f653e15defde1f45a42ec1326416ccd0a6e.pdf).                                                                                                                                                                                                                                                                                                                                                                           |
| ![](../img/snap/snap_blocks/robot_URL.png)                 | Donne l'URL du robot (usage avancé)                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ![](../img/snap/snap_blocks/reset.png)                     | Redémarrer le logiciel du robot                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ![](../img/snap/snap_blocks/set_register_of_motor.png)     | Changer la valeur d'un registre moteur (position, speed, max torque, …) ou de plusieurs moteurs. Le champs “motor(s)” accepte : - le nom d'un unique moteur ( par ex **m1**) - une série de plusieurs noms de moteurs séparés par des espaces (par ex **m1 m2 m3 m4**) - un bloc Snap de type "list" comme par ex "$robot all motors".   
| ![](../img/snap/snap_blocks/get_register.png)              | Lire la valeur d'un registrer moteur (position, speed, load, ...) (avancé)                
| ![](../img/snap/snap_blocks/set_host.png)                  | Indiquer l'adresse du robot Poppy à contrôler. ça peut être : robot_name.local (par ex `poppy.local`) ; une adresse IP (par ex `123.124.145.176`) ou `localhost` si vous utilisez Poppy-Services
Il est recommandé de ne pas le modifier si vous ne comprenez pas à quoi cela sert (avancé) |

<!-- TODO

## Quick examples

### Record and play back a move

You can record a movement on one motor and play it back

You can change the speed

You can record it on all motors

or just a subset of your creature


#### Record and by demonstration movement

-->
