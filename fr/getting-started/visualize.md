## Visualiser le robot dans un simulateur

### Créatures Poppy simulées

Des versions simulées de tous les robots Poppy (Humanoïde, Torse, and Ergo Jr) sont disponibles.

Des connexions avec deux simulateurs populaires ont été développées :
* avec [V-REP](http://www.coppeliarobotics.com): une plateforme d'expérimentation robotique virtuelle
* avec [un visualisateur web 3D](http://simu.poppy-project.org): plus léger mais sans support pour la physique.

> **Attention** Actuellement, seul le Poppy Ergo Jr peut être utilisé dans le visualisateur web. Si vous souhaitez simuler d'autres créatures, vous devez utiliser V-REP. Le support pour d'autres robots est en préparation mais pas dans un avenir immédiat.

Nous pensons que la simulation peut être un outil puissant. Elle permet de développer et de tester des programmes sans avoir besoin d'un vrai robot. Cela est particulièrement utile :

* Pour découvrir et essayer les possibilités du robot sans dépenser quoi que ce soit.
* Dans un contexte où plusieurs utilisateurs doivent partager un robot. Par exemple dans une salle de classe où chaque groupe peut travailler avec le simulateur puis valider son travail sur un vrai robot.
* Pour concevoir et exécuter des expériences compliquées et coûteuses en temps.

Nous essayons de rendre la **transition du robot Poppy simulé vers le vrai robot aussi simple que possible**. Notre documentation est valable aussi bien pour le robot simulé que le robot physique. Le chapitre *[De la simulation au vrai robot](../from-simulation-to-real-robot/README.md)* vous guidera tout au long des étapes nécessaires à la transformation de votre programme de simulation vers un programme fonctionnant sur un vrai robot.

> **Attention** Si vous voulez utiliser les robots Poppy dans un simulateur, vous devrez installer des bibliothèques Poppy sur votre ordinateur.


### Installer le logiciel requis

Bien que les bibliothèques soient déjà installées sur les robots physiques, elles ne sont pas intégrées dans les simulateurs. Vous devrez donc les installer sur votre ordinateur. La marche à suivre pour les installer vous est donnée ci-dessous. Vous n'aurez pas non plus accès à l'interface web du robot, et il vous faudra lancer manuellement les différents services pour débuter la programmation de votre robot (par exemple le serveur Jupyter pour les Notebooks en Python, ou le serveur Snap_!_).

> **Info** Nous prévoyons de fournir ultérieurement une application complète et facile à installer pour Windows/Mac/Linux.

Pour commencer à programmer votre robot Poppy simulé avec V-REP ou le visualisateur web, vous aurez besoin :

* D'obtenir un environnement Python fonctionnel ; nous vous encourageons à utiliser la [distribution Anaconda Python](https://www.continuum.io/downloads), qui fonctionne avec toute version >=2.7 ou >=3.4 (nous utilisons la version 2.7).
* D'installer les bibliothèques Poppy : pypot et la bibliothèque correspondant à votre robot (par exemple poppy-ergo-jr).

> **Note** Les détails de ces étapes sont dans la section *[Installer localement le logiciel pour usage avec un simulateur](../installation/install-poppy-softwares.md)*.

### Utiliser V-REP

[V-REP](http://www.coppeliarobotics.com) est un simulateur puissant et très répandu. Il est largement utilisé à des fins de recherche et d'enseignement. Il est de plus disponible gratuitement sous une licence éducative. Il peut être téléchargé depuis [ce site web](http://www.coppeliarobotics.com/downloads.html) (il fonctionne sous Mac OS, Windows et GNU/Linux).

> **Attention** Il est important de noter que V-REP simule tous les aspects de la physique et de l'affichage du robot. Il peut être lent si vous ne disposez pas d'un ordinateur puissant (notamment en ce qui concerne la carte graphique).

![Poppy Humanoid dans V-REP](../../en/img/humanoid/vrep.png)

Les principaux robots Poppy sont disponibles dans V-REP:

* Poppy Humanoid
* Poppy Torso
* Poppy Ergo Jr

V-REP peut être utilisé pour apprendre à contrôler les moteurs et obtenir de l'information des capteurs, mais aussi pour interagir avec un environnement simulé. Il peut être contrôlé avec Python, Snap_!_ ou par l'interface REST. Voici quelques exemples de ce que la communauté a pu faire avec:

* Une activité pédagogique pour découvrir les différents moteurs de votre robot et comment les contrôler.
* Une expérience scientifique, dans laquelle un Torse Poppy apprend à pousser le cube qui se trouve sur la table en face de lui.

![Poppy Torso dans V-REP](../../en/img/torso/explauto-vrep.png)![Expérience Torso Explauto Res](../../en/img/torso/explauto-res.png)

> **Note** Malgré nos efforts pour reproduire le comportement et le fonctionnement du robot, quelques différences subsistent. En particulier, si vous faites fonctionner le robot en simulation, cela ne signifie pas forcément qu'il fonctionnera dans le monde réel (et vice-versa).

### Utiliser le visualisateur web

Le visualisateur web – basé sur la bibliothèque [Three.js](http://threejs.org) – vous donnera une représentation 3D de votre robot Poppy Ergo Jr. Pour cela vous aurez besoin de le connecter soit à un vrai robot (à travers l'interface REST), soit à un robot de test exécuté sur votre ordinateur. Il suffit de définir la variable `hôte` de l'interface web par l'adresse de votre robot.

![Présentation de Poppy Simu](../../en/img/visu/presentation.png)

> **Note** Un robot de test peut être exécuté avec la commande **poppy-services**. Par exemple: ```poppy-services --poppy-simu --snap poppy-ergo-jr```

Comme pour V-REP, vous pouvez contrôler votre robot en utilisant Python, Snap_!_, ou l'interface REST. Par contre, il n'y a pas de simulation physique, cela demande donc moins de ressources mais vous ne pourrez pas interagir avec des objets.

Voici un exemple avec Python :

![Poppy Visu avec Python](../../en/img/visu/python-setup.gif)
