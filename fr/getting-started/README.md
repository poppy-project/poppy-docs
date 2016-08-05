# Démarrer

![](../../en/img/logo/poppy.png)

Le [Projet Poppy](https://www.poppy-project.org/) est un projet sous licence libre pour la création, l'utilisation et le partage de robots interactifs réalisés par impression 3D. Il rassemble une communauté inter-disciplinaire de débutants et d'experts, de scientifiques, d'enseignants, développeurs et artistes. Ils partagent une vision: les robots sont de puissants outils d'apprentissage, de création et de collaboration afin d'améliorer le projet. Ils developpent de nouveaux comportements robotiques, créent des contenus pédagogiques, conçoivent des performances artistiques, améliorent le logiciel ou même créent de nouveaux robots.

La [Communauté Poppy](https://forum.poppy-project.org/) développe des créations robotiques faciles à construire, à personnaliser et à déployer. Nous promouvons  les licences libres en partageant la matériel et le logiciel. Une plateforme Web associée permet à la communauté de partager ses expériences et de contribuer à son amélioration.

Pour faciliter ces échanges, deux supports sont disponibles :

* [Le forum poppy-project](https://forum.poppy-project.org/) pour obtenir de l'aide, discuter et échanger des idées.

* [GitHub](https://github.com/poppy-project) pour soumettre vos contributions.


Toutes les sources du projet Poppy \(logicielles et matérielles\) sont disponibles sur [GitHub](https://github.com/poppy-project).

Le projet Poppy a initialement été conçu au laboratoire [Inria Flowers](http://www.inria.fr/equipes/flowers/).

## Les créatures Poppy

Les créatures Poppy sont des robots sous licence libre, disponibles au téléchargement et pour être modifiés \([Licence Creative Commons avec attribution](http://creativecommons.org/licenses/by-sa/4.0/) pour le matériel et la licence [GPLv3](http://www.gnu.org/licenses/gpl-3.0.en.html) pour le logiciel\). Elles ont été conçues avec ces mêmes principes directeurs.

Toutes les créatures Poppy:

* sont faites à partir de pièces imprimables en 3D et de moteurs Dynamixel,
* utilisent une carte d'extension pour le contrôle \(un Raspberry Pi 2 ou Odroid pour les versions plus anciennes\),
* sont basées sur une bibliothèque Python, [pypot](../software-libraries/pypot.md), qui permet le contrôle des servomoteurs Dynamixel de manière simplifiée,
* ont une version de simulation disponible \(basée sur [V-REP](http://www.coppeliarobotics.com)\),
* peuvent être controlées en utilisant un langage de programmation visuel \([Snap!](http://snap.berkeley.edu) une variation de Scratch\) et un langage textuel [Python](https://www.python.org). Elles sont aussi programmables par l'intermédiaire d'une API REST, ce qui permet de les contrôler à partir d'autre langages de programmation,
* viennent avec la documentation associée, des tutoriels, exemples et activités pédagogiques.

Elles peuvent être utilisées telles quelles, ou modifiées pour explorer de nouvelles formes, l'ajout de senseurs, etc...

Pour obtenir votre propre robot Poppy, vous pouvez soit :

* Vous procurer toutes les pièces vous-même en suivant la liste ci-dessous.
* Acheter un kit de robotique Poppy complet auprès de notre [détaillant officiel](http://www.generationrobots.com/en/279-poppy-opensource-robotics-platform).

### Poppy Ergo Jr

Le robot Poppy Ergo Jr est un petit bras robotique à cout modéré qui possède six degré de mouvements. Il est fait de 6 moteurs au prix abordable \(des servos XL-320 Dynamixel\) ainsi que de parties simples et imprimables en 3D.

![](../../en/assembly-guides/ergo-jr/img/ErgoJr.jpg)

Les pièces 3D ont été conçues pour être aisément imprimée sur un imprimante 3D courante. Les moteurs coûtent environ 20€ chacun. La carte électronique de contrôle est simple. Cela facilite la connexion de senseurs supplémentaires et est donc adapté à des objectifs pédagogiques.

Vous pouvez choisir parmi les trois outils pour équiper l'extrêmité de son bras :

* Une lampe.

* Une pince.

* Un porte-stylo.


Les rivets employés rendent le montage et démontage des outils simples. Vous pouvez les adapter en fonction de l'activité choisie.

![](/en/assembly-guides/ergo-jr/img/ergo_tools.gif)

Le Ergo Poppy Jr est idéal pour débuter à manipuler des robots et apprendre la robotique sans difficultés. Il est simple à assembler, contrôler et d'un coût réduit.

Vous pouvez obtenir les pièces vous-mêmes en suivant la [liste des matériaux](https://github.com/poppy-project/poppy-ergo-jr/blob/master/doc/bom.md) \(LDM\) et imprimer les [pièces 3D](https://github.com/poppy-project/poppy-ergo-jr/releases/) disponibles au format STL.

Pour plus d'informations, vérifiez le [guide d'assemblage de l'Ergo Jr](../assembly-guides/ergo-jr/README.md).

### L'Humanoïde Poppy

Il s'agit d'un robot humanoïde à 25 degrés de liberté possédant une colonne vertébrale complètement motorisée. Il est utilisé pour l'éducation, la recherche \(marche, interactions entre humains et robots\) ou les arts \(danses, performances\). Du simple bras à l'humanoïde complet, cette plateforme est activement utilisée dans les laboratoires, les écoles d'ingénieur, les FabLabs, et les projets artistiques.

Vous pouvez obtenir les pièces vous-mêmes en suivant la [liste des matériaux](https://github.com/poppy-project/poppy-humanoid/blob/master/hardware/doc/BOM.md) \(LDM\) et imprimer les [pièces 3D](https://github.com/poppy-project/poppy-humanoid/releases/tag/hardware_1.0.1/) disponibles au formats STL, STEP et Solidworks 2014.

![](/en/img/humanoid/vecto.png)

### Le Torse Poppy

It is the upper part of Poppy Humanoid \(13 degrees of freedom\). Poppy Torso is thus more affordable than the complete Poppy Humanoid. It makes it a more suitable solution for educational, associative and makers contexts. Poppy Torso can be a good medium to learn science, technology, engineering and mathematics \(STEM\).

You can get all the parts yourself following the [bill of material](https://github.com/poppy-project/poppy-torso/blob/master/hardware/doc/BOM.md). The [3D models](https://github.com/poppy-project/poppy-humanoid/releases/tag/hardware_1.0.1/) for the parts are the same as Poppy Humanoid, without the legs and with an extra [suction cup support](https://github.com/poppy-project/robot-support-toolbox/).

![Poppy Torso Vecto](../img/torso/vecto.png)

### Other interesting Poppy Creatures

A key aspect of the Poppy Project is to stimulate creativity and experimentation around robotics. We try to provide all the tools needed to design new robots based on the same technological bricks. Some new creatures are in development within the community. Some of them are presented in the section below.

#### Poppy right arm \(work in progress\)

Poppy right arm is a Poppy creature based on a right arm of Poppy Humanoid, with 3 additional XL-320 motors at the end to improve the reach and agility of the arm. It used the same gripper tool used in the Ergo Jr, designed to grab simple objects.

![Poppy Right Arm](../img/poppy-right-arm.jpg)

The project was realized during an internship at Inria Flowers by [Joel Ortiz Sosa](https://github.com/joelortizsosa). Find more info and the sources in the [repository](https://github.com/poppy-project/poppy-6dof-right-arm).

#### Small and low-cost humanoids

##### Heol

Heol - meaning "sun" in Breton - is a 34cm tall humanoid robot made by the association [Heol robotics](http://heol.io/). 23 motors compose it, all other parts are 3D printed. It also uses the pypot library for its movements.

Heol's purpose is to put a smile on ill children's faces. It can be an educational tool by becoming a learning support materials for programming and mechanical design.

Its participation in the RoboCup \(World Cup football for robot\) is also envisaged.

![Heol](../img/heol.jpg)

##### [Poppyrate](http://www.poppyrate.com/)

It a robot based on Poppy Humnaoid. It aims at developing a more affordable version thanks to its smaller size and the use of cheaper motors. The size reduction also makes it easier to print the parts on a standard 3D-printer. Goals also involved making it as mobile and customisable as possible while maintaining compability with Poppy software.

Poppyrate will be sold as a kit \(with and without the 3D parts\) It has been designed by the socity ZeCloud.

![Poppyrate](../img/poppyrate.jpg)

For more information, check their [Website](http://www.poppyrate.com/) - [Twitter](https://twitter.com/poppyratproject) - [Facebook](https://www.facebook.com/Poppyrate/)!

