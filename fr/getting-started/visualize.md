# Utiliser les robots dans un simulateur

## Robots Poppy simulés

Une version simulée de chaque robot Poppy est disponible (Humanoid, Torso, Ergo Jr).

On peut utiliser deux « simulateurs » avec les robots Poppy : * [ V-REP](http://www.coppeliarobotics.com) : un simulateur de robotique avec de nombreuses possibilités et très utilisé * [ un visualisateur web-3D](http://simu.poppy-project.org) : plus léger, mais sans simulation physique

> **Attention** Pour le moment seul l'Ergo Jr peut être utilisé dans le visualiseur web. Si vous souhaitez simuler d’autres créatures, vous devez utiliser V-REP. On souhaiterai prendre en charges les autres robots, mais aucun calendrier n'est fixé sur ce point là.

L'utilisation d'un simulateur est très intéressante. Cela permet de développer et d'essayer des programmes sans avoir besoin d'un vrai robot. Plus particulièrement, cela permet :

* De découvrir et tester les possibilités du robot sans avoir à dépenser d'argent.
* De travailler dans un contexte où plusieurs utilisateurs partagent un robot. Par exemple, dans une salle de classe, chaque élève peut travailler en utilisant le simulateur et venir valider son programme sur le robot tangible.
* D'économiser du temps dans la conception et réalisation d'expériences.

Nous essayons de faire en sorte que **le passage du robot virtuel au tangible soit aussi transparente et simple que possible**. La plupart des exemples de programmation et de la de documentation du code sont ainsi valable aussi bien pour les robots simulés que tangibles. Le chapitre *[ de la simulation au robot tangible](../from-simulation-to-real-robot/README.md)* vous guidera dans les étapes pour adapter votre programme fonctionnant dans le simulateur vers l'usage d'un robot tangible.

> **Attention** Si vous souhaitez utiliser des robots Poppy dans un simulateur vous devrez installer le simulateur ainsi que librairies logicielles sur votre ordinateur.

## Installer les logiciels nécéssaire

> **Pour information** : Une section entière est dédiée à comment *[installer tout en local dans le but d'utiliser un simulateur](../installation/install-poppy-softwares.md)* si vous avez besoin de plus de renseignements.

Alors que les robots physiques disposent d'un ordinateur embarqué pré-installé, vous devez installer certaines bibliothèques logicielles sur votre ordinateur pour contrôler les créatures Poppy simulées. Vous n'aurez pas accès à l'interface web du robot. Vous devrez lancer manuellement les différents services pour commencer à programmer votre robot (le terminal Jupyter pour les notebooks Pyhton ou le terminal Snap_ ! _).

Pour commencer à contrôler un robot Poppy, que ce soit en utilisant V-REP ou le visualiseur web, vous aurez besoin : *Pour faire fontionner Python, nous recommandons fortement d’utiliser la [distribution Python Anaconda](https://www.continuum.io/downloads). Il fonctionne avec n’importe quelle version > = 2.7 ou > = 3,4. Préfèrez Python 2.7 si vous le pouvez, car c’est la version que nous avons utilisé. * Pour installer les bibliothèques Poppy : pypot et la bibliothèque correspondant à votre créature (p. ex. poppy-ergo-jr).

## Avec V-REP

[ V-REP](http://www.coppeliarobotics.com) est un simulateur de robotique très populaire aux nombreuses fonctionnalités. Il est très utilisé dans pour la recherche ou des fins éducatives. De plus, il est disponible gratuitement avec la license éducative. Il peut être téléchargé depuis [ le site de Copellia Robotics](http://www.coppeliarobotics.com/downloads.html) (fonctionne sous Mac OS, Windows et GNU/Linux).

> **Attention** Etant donné que V-REP effectue une simulation physique ainsi qu'un rendu graphique du robot, il nécessite un ordinateur puissant (surtout pour la carte graphique).

![Poppy humanoide dans V-REP](../img/humanoid/vrep.png)

Tous les principaux robots Poppy sont disponibles dans V-REP : * Poppy Humanoid * Poppy Torso * Poppy Ergo Jr

V-REP permet d’apprendre à commander les moteurs, interroger les capteurs, mais aussi d’interagir avec l’environnement simulé. On peut commander les robots simulés en Python, avec Snap_ ! _ ou par le biais de l’API REST. Voici quelques exemples de ce que la communauté a déjà pu faire avec : * Une activité pédagogique pour découvrir les différents moteurs de votre robot et comment ils peuvent être contrôlés. * Une expérience scientifique, où un Poppy Torso apprend comment pousser un cube sur une table en face de lui.

![Torso V-REP](../img/torso/explauto-vrep.png)![Torso Explauto Res](../img/torso/explauto-res.png)

> **Pour information** Même si nous essayons de reproduire le comportement et le fonctionnement du robot, quelques différences persistent. Par exemple, si vous faites marcher un robot dans la simulation, cela ne veut pas dire que le robot physique marchera (et vice-versa).

Pour démarrer le robot simulé, il faut dans un premier temps ouvrir V-REP et instancier le robot avec `simulateur = « vrep »`. V-REP va ouvrir une popup qui vous devrez fermer pour permettre la communication entre V-REP et Python.

```python
from pypot.creatures import PoppyErgoJr
robot = PoppyErgoJr(simulator='vrep')
```

Si vous souhaitez contrôler un robot simulé via Snap!, vous pouvez également le lancer directement depuis l' interface de ligne de commande `poppy-services` dans votre terminal (appelée invite de commande sous Windows) :

```bash
poppy-services --vrep --snap poppy-ergo-jr
```

## En utilisant notre visualiseur web

Notre visualiseur web permet d'afficher une représentation 3D d’un robot Poppy. Pour ce faire, vous aurez besoin de le connecter soit à un vrai robot (via l’API REST) soit à un robot simulé sur votre ordinateur. Vous devez simplement définir la variable host depuis l’interface web pour pointer sur l’adresse de votre robot.

![Présentation Simu Poppy](../img/visu/presentation.png)

En Python, vous pouvez démarrer le robot simulé avec :

```python
from pypot.creatures import PoppyErgoJr
robot = PoppyErgoJr(simulator='poppy-simu')
```

Ajouter un argument `use_snap = True` si vous souhaitez démarrer l'API Snap.

Si vous souhaitez contrôler un robot simulé avec Snap!, vous pouvez également le lancer directement avec l'outil interactif `poppy-services` dans un terminal (appelée ligne de commande sous Windows) :

```bash
poppy-services --poppy-simu --snap poppy-ergo-jr
```

En ce qui concerne V-REP, vous pouvez contrôler votre robot en utilisant Python, Snap!, ou l’API REST. Cependant il n’y a pas de support pour la simulation physique; c'est plus léger en terme d'exécution mais vous ne serez pas en mesure d’interagir avec des objets.

Voici un exemple avec Python :

![Poppy simu en Python](../img/visu/python-setup.gif)