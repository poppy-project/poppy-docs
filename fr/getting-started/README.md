# Getting Started

![](/en/img/logo/poppy.png)

[Poppy Project](https://www.poppy-project.org/) est un projet sous licence libre pour la création, l'utilisation et le partage de robots interactifs réalisés par impression 3D. Il rassemble une communauté inter-disciplinaire de débutants et d'experts, de scientifiques, d'enseignants, développeurs et artistes. Ils partagent une vision: les robots sont de puissants outils d'apprentissage, de création et de collaboration afin d'améliorer le projet. Ils developpent de nouveaux comportements robotiques, créent des contenus pédagogiques, conçoivent des performances artistiques, améliorent le logiciel ou même créent de nouveaux robots.

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
* 
* are based on a Python library, [pypot](../software-libraries/pypot.md), allowing to control Dynamixel servomotors in an easy way,
* have a simulated version available \(based on [V-REP](http://www.coppeliarobotics.com)\),
* can be controlled using a visual programming language \([Snap!](http://snap.berkeley.edu) a variation of Scratch\) and a textual language [Python](https://www.python.org). They are also programmable through a REST API, which enables the control with other programming language,
* come with associated documentation, tutorials, examples, pedagogical activities.

They can be used as it is, or hacked to explore new shapes, add sensors, etc...

To get your own Poppy robot, you can either:

* Get all the parts yourself by following the bill of materials \(see below\).
* Buy a full Poppy robotic kit from our [official retailer](http://www.generationrobots.com/en/279-poppy-opensource-robotics-platform).

### Poppy Ergo Jr

The Poppy Ergo Jr robot is a small and low cost 6-degrees-of-freedom robot arm. It is made of 6 cheap motors \(XL-320 Dynamixel servos\) with simple 3D-printed parts.

![Poppy Ergo Jr](../assembly-guides/ergo-jr/img/ErgoJr.jpg)

The 3D parts were made so they can be easily printed on a basic 3D printer. The motors are only 20€ each. Its electronic card access is simple. It makes it easy to connect extra sensors and is well suited for pedagogical purposes.

You can choose among three tools at the end of its arm:

* A lamp.
* A gripper.
* A pen holder.

The rivets used make it easy and quick to change the tools. You can adapt it depending on the type of activities you are doing.

![Ergo Jr tools](../assembly-guides/ergo-jr/img/ergo_tools.gif)

The Ergo Poppy Jr is ideal to start manipulating robots and learn robotic without difficulties. It is simple to assemble, easy to control and low price.

You can get all the parts yourself following the [bill of materials](https://github.com/poppy-project/poppy-ergo-jr/blob/master/doc/bom.md) \(BOM\) and print the [3D parts](https://github.com/poppy-project/poppy-ergo-jr/releases/) available in the STL format.

For more information, check the [assembly guide of the Ergo Jr](../assembly-guides/ergo-jr/README.md).

### Poppy Humanoid

It is a 25-degrees of freedom humanoid robot with a fully actuated vertebral column. It is used for education, research \(walk, human-robot interaction\) or art \(dance, performances\). From a single arm to the complete humanoid, this platform is actively used in labs, engineering schools, FabLabs, and artistic projects.

You can get all the parts yourself following the [bill of materials](https://github.com/poppy-project/poppy-humanoid/blob/master/hardware/doc/BOM.md) \(BOM\) and print the [3D parts](https://github.com/poppy-project/poppy-humanoid/releases/tag/hardware_1.0.1/) available as STL, STEP and Solidworks 2014 format.

![Poppy Humanoid Vecto](../img/humanoid/vecto.png)

### Poppy Torso

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

