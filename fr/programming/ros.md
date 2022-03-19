# Programmation des robots Poppy en ROS

ROS est une boîte à outils logicielle pour la création de robots, très populaire dans le milieu académique. Il est plutôt destiné aux utilisateurs avancés.

<img src="https://raw.githubusercontent.com/poppy-project/poppy_ergo_jr_description/master/doc/img/rviz.png" alt="Poppy dans ROS Noetic" />

## Compatibilité des versions de robots et de ROS

Pour pouvoir utiliser votre robot avec ROS vous devez impérativement installer **ROS 1 Noetic** sur **Ubuntu 20.04**. La version ROS 2 supporte Windows et MacOS, cependant Poppy n'est pas encore compatible.

Seul Poppy Ergo Jr dispose d'une compatibilité avec ROS totale à partir de la [version 4.0.0](https://github.com/poppy-project/poppy-ergo-jr/releases). Les versions précédentes ne supportent pas ROS. Observez votre numéro de version tout en haut à droite de la page d'accueil du robot [http://poppy.local](http://poppy.local). Pour Torso et Humanoid, veuillez consulter la [section dédiée en bas de page](#utiliser-poppy-torso-et-poppy-humanoid-avec-ros).


## Installation en 3 étapes
### 1. Installer ROS Noetic

Veuillez vous réferer à la [procédure d'installation de ROS Noetic](https://wiki.ros.org/noetic/Installation/Ubuntu). La procédure est réussie lorsque la commande `roscore` démarre un ROS master que vous pouvez ensuite interrompre avec Ctrl+C.

### 2. Installer MoveIt 1.0

MoveIt est un ensemble d'outils pour ROS permettant de faciliter la création de robots manipulateurs. il dispose d'outils de planification de trajectoires, de perception 3D, de cinématique et de contrôle moteur.

Veuillez vous réferer à la [procédure d'installation de MoveIt](https://moveit.ros.org/install/). 

### 3. Télécharger l'intégration de Poppy Ergo Jr dans ROS

Enfin, vous devez récupérer les 3 packages ROS nécessaires via git dans votre ROS workspace, puis les compiler avec catkin_make :
```bash
cd ~/catkin_ws/src
git clone https://github.com/poppy-project/poppy_ergo_jr_description/
git clone https://github.com/poppy-project/poppy_ergo_jr_moveit_config
git clone https://github.com/poppy-project/poppy_controllers
cd ~/catkin_ws && catkin_make
source ~/catkin_ws/devel/setup.bash
```

## Utiliser Poppy sous ROS
### Aperçu de l'API ROS pour Poppy

Le robot Poppy dispose des topics et services suivants :

* Le topic `/joint_states` publient l'état courant des joints
* Le action server `/follow_joint_trajectory` permet de contrôler le robot par envoi de trajectoires de type `trajectory_msgs/JointTrajectory`
* Le service `/set_compliant` eprmet de (dés)activer la compliance du robot (robot mou)
* Le service `/get_image` permet de prendre une photo via la caméra de Poppy (il renverra une image de dimension 0 si la caméra n'est pas foncitonnelle)
* Le service `/close_gripper` permet d'ouvrir et fermer la pince de Poppy Ergo Jr si le robot a été monté avec cet effecteur (il s'agit de son moteur m6)
* Les paramètres `/gripper/angles/aperture` et `/gripper/angles/closure` définissent l'intervalle d'ouvrture et de fermeture de la pince(en degrés d'environ -20° à +30°)
* Le paramètre `/gripper/speed` définnie la vitesse d'ouverture et de fermeture de 0.05 (le plus lent) à 1 (le plus rapide)


### Démarrer les contrôleurs Poppy d'un robot tangible (aka les services ROS)

Démarrez les services ROS en vous connectant à la page d'accueil du robot [http://poppy.local](http://poppy.local) puis en sélectionnant **Programmer** puis **ROS** :

<img src="/img/4.0.0/ros-start.png" alt="Démarrage des services ROS" />

Ce bouton a pour effet de démarrer les contrôleurs ROS pour Poppy sur le robot lui-même. Dans ce cas le robot sera le ROS master et vous devrez l'utiliser comme ROS master avec la variable d'envrionnement suivante sur votre poste de travail :

```bash
export ROS_MASTER_URI=http://poppy.local:11311
# remplacer poppy.local par le nom de votre robot si vous l'avez changé
``` 

**Note** : Dans le cas particulier où vous  ne souhaiteriez pas que Poppy soit le ROS master ou si vous souhaitez personnaliser le launchfile à lancer sur le robot, n'utilisez pas le bouton de démarrage de ROS et vérifiez que l'API du robot est arrêtée. Ensuite vous pouvez vous connecter au robot en ssh avec la commande puis lancer le launchfile manuellement afin de le personnaliser :
```
ssh poppy@poppy.local                            # password poppy
export ROS_MASTER_URI=http://poppy.local:11311   # Définissez ici votre ROS master
roslaunch poppy_controllers control.launch       # Il s'agit du launchfile habituellement démarré par le bouton "Démarrer ROS"
```


### Déclencher la compliance, la prise d'image ou la fermeture de la pince

La compliance, la prise d'image et la fermeture de la pince sont déclenchées par un appel de service ROS, depuis un client de service Python, ou bien en ligne de commande comme présenté ci-dessous :


```bash
rosservice call /set_compliant "data: true" 

# The service must return a success message:
#   success: True
#   message: "Robot compliance has been enabled"
```

La prise d'image renvoyant une image au format `sensor_msgs/Image`, elle ne peut pas être affichée dans un terminal et il est donc plus adapté de faire l'appel de service depuis Python :


```python
import cv2
from poppy_controllers.srv import GetImage
from cv_bridge import CvBridge

get_image = rospy.ServiceProxy("get_image", GetImage)
response = get_image()
bridge = CvBridge()
image = bridge.imgmsg_to_cv2(response.image)
cv2.imshow("Poppy camera", image)
cv2.waitKey(200)
```

**Important** : Prenez soin de vérifier si l'image que vous avez récupérée n'est pas vide avant de l'exploiter. Ceci peut se produire si votre caméra est défectueuse ou non-connectée.

### Planifier et exécuter des trajectoires avec MoveIt

MoveIt vous permet de décrire les obstacles à proximité du robot (en dur ou provenant d'un capteur) et générer des trajectoires avec évitement d'obstacle.

<img src="https://github.com/poppy-project/poppy_ergo_jr_moveit_config/raw/36ffb295cf115a080b81aa6475ae512e88c9957a/doc/img/MoveIt.gif" alt="Poppy Ergo Jr dans MoveIt" />

### Démarrer MoveIt avec un robot simulé

Démarrez MoveIt avec le paramètre `fake_execution` à true pour simuler un robot :
```bash
roslaunch poppy_ergo_jr_moveit_config demo.launch fake_execution:=true gripper:=true
```

Ou bien avec l'effecteur abat-jour :
```bash
roslaunch poppy_ergo_jr_moveit_config demo.launch fake_execution:=true lamp:=true
```

### Démarrer MoveIt un robot tangible

Avec un robot tangible, démarrez les services ROS sur le robot puis sur votre poste de travail démarrez MoveIt en passant `fake_execution` à false:
```bash
roslaunch poppy_ergo_jr_moveit_config demo.launch fake_execution:=false lamp:=true
```
La boule bleue de l'effecteur vous permet de définir une cible cartésienne à atteindre et le bouton "Plan and Execute" lance une planification de trajectoire avec évitement d'obstacle et l'exécute sur le robot.


### Fonctionnalité d'enregistrement et rejeu de trajectoire à l'identique

Avant d'enregistrer une trajectoire, commencez par activer la compliance :
```bash
rosservice call /set_compliant "data: true" 
```
Cependant il est aussi possible d'enregistrer la trajectoire sans compliance en générant la trajectoire à enregistrer par MoveIt par exemple.

Ensuite, utilisez par exemple ce code Python pour enregistrer :
```python
import rospy
from poppy_ros_control.recorder import Recorder

rospy.init_node("trajectory_recorder")
r = Recorder()
r.start_recording()

# Move your robot with your hands in compliant mode to record its trajectory
rospy.sleep(5)

r.stop_and_save("my_motion_name")
```

Les trajectoires sont enregistrées dans des fichiers du dossier `poppy_controllers/data`.

Ensuite vous pourrez les charger et les rejouer ainsi :


```python
import rospy
from poppy_ros_control.recorder import Player
from moveit_commander.move_group import MoveGroupCommander

rospy.init_node("trajectory_player")
commander = MoveGroupCommander("arm_and_finger")
player = Player()

# This returns a moveit_msgs/RobotTrajectory object representing the recorded trajectory
my_motion = player.load("my_motion_name")

# Go to the start position before replaying the motion
commander.set_joint_value_target(my_motion.joint_trajectory.points[0].positions)
commander.go()

# Replay the exact same motion
commander.execute(my_motion)
```

**NB** : Pypot dispose d'un système d'[enregistrement et rejeu de données](http://poppy-project.github.io/pypot/move.html) qui lui est propre. Cependant il n'est pas utilisable lorsque vous activez ROS sur `http://poppy.local` car `poppy_controllers` est déjà connecté au robot et ne permet pas à Pypot de s'y connecter à son tour. 

### Travaux pratiques avec MoveIt

Pour découvrir toutes les fonctionnalités de MoveIt comme l'évitement d'obstacle, nous vous conseillons de suivre [cette activité de travaux pratiques](https://learn.e.ros4.pro/fr/manipulation/ergo-jr/).

## Résolution des problèmes
#### `Invalid Trajectory: start point deviates from current robot state more than 0.2`
Vous essayez d'exécuter une trajectoire dont le premier point est beaucoup trop loin de la configuration actuelle du robot.
Vous pouvez atteindre ce premier point d'abord avec `set_joint_value_target`.
La flexibilité des pièces mécaniques de Poppy Ergo Jr cause une perte de précision et peut provoquer cette erreur en particulier dans les configurations avec un bras de levier et une charge qui évoluent rapidement. Un re-planning résoud généralement le problème.

#### `ABORTED: Solution found but controller failed during execution`
La compliance de votre robot est-elle désactivée ? Les trajectoires ne peuvent pas être exécutée avec la compliance active.

#### Le robot fait des acoups abruts
* If you are replaying a recorded trajectory, make you you first join its initial point before starting replay: use `set_joint_value_target` first before `execute`
* Les moteurs de Poppy Ergo Jr ont un intervalle angulaire valide de [-170°, +170°] = [-0.94 rad, +0.94 rad]. Si votre trajctoire les fait sortir de cette intervalle, le comportement qui d'être ératique, ainsi :
* Eloignez-vous des moteurs en demi-tour (à un angle d'environ ~ 180° = 3.14 rad) lorsque vous enregistrez une trajectoire
* Vérifiez que vos moteurs ne sont pas montés à l'envers. Pour vérifier utilisez `set_joint_value_target([0, 0, 0, 0, 0, 0])`  ce qui doit amener votre robot dans cette très exacte configuration :

<img src="https://camo.githubusercontent.com/bda29f64b2e37ca0471eefff12f7981300e167c8/687474703a2f2f646f63732e706f7070792d70726f6a6563742e6f72672f656e2f617373656d626c792d6775696465732f6572676f2d6a722f696d672f6572676f5f746f6f6c732e676966" alt="Configuration attendue du robot avec tous les joints à 0" />

## Utiliser Poppy Torso et Poppy Humanoid avec ROS
Le support ROS pour Poppy Humanoid et Poppy Torso sous ROS étant incomplet, si cela convient à votre usage nous vous recommandons d'utiliser `pypot` dans un noeud ROS en Python de la façon suivante :

1. Retirer l'adaptateur USB2AX du robot branché sur la tête du robot pour le connecter à votre station de travail ROS Noetic
2. Sur votre station de travail taper `pip3 install poppy-torso` (ou `pip3 install poppy-humanoid`)
3. Pour programmer votre robot, créez un noeud ROS et importez votre robot `from pypot.creatures import PoppyTorso`
4. Déclarez ensuite une instance de robot puis manipulez votre robot via `pypot` conformément à la [documentation Poppy pour Python](./python.md). Vous pouvez utiliser toutes les fonctionnalités `pypot` pour piloter votre robot : le `MoveRecorder`, les primitives, les commandes moteur, ... ainsi que les topics, services et paramètres ROS pour communiquer avec ce noeud.

**Utilisateurs avancés uniquement :** vous trouverez des [packages](https://poppy.discourse.group/t/support-of-ros-available-for-poppy-ergo-jr/) disponibles si vous cherchez l'URDF ou l'intégration MoveIt de Poppy Torso. Toutefois les contrôleurs n'étant pas disponibles, ces packages ne vous permettront pas de faire bouger votre robot tangible.
