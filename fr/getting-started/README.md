# Premiers pas

![Logo Poppy](../img/logo/poppy.png)

[Le projet de Poppy](https://www.poppy-project.org/) est une plate-forme open-source pour la création, l'utilisation et le partage de robots interactifs imprimés en 3D. Il rassemble une communauté interdisciplinaire de débutants, d'experts, de chercheurs, d'enseignants, de développeurs et d'artistes. Ils partagent tous une même vision : les robots sont de puissants outils pour apprendre et développer la créativité, et ils collaborent pour améliorer le projet. Ils développent de nouveaux comportements pour les robots, créent des contenus pédagogiques, élaborent des performances artistiques, améliorent le logiciel ou même conçoivent de nouveaux robots.

La [communauté Poppy](https://forum.poppy-project.org/) développe des créations robotiques qui sont faciles à construire, personnaliser et utiliser.

Un ensemble de services web permet à la communauté de partager leurs expériences et de contribuer à l'amélioration de la plateforme Poppy.

Pour faciliter ces échanges, deux supports sont disponibles :

* [Le forum de projet Poppy](https://forum.poppy-project.org/) pour avoir de l'aide, partager ses idées et en discuter.
* [GitHub](https://github.com/poppy-project) pour soumettre vos contributions et faire un suivi des bugs logiciels.

Toutes les sources du projet Poppy (logiciel et matériel) sont disponibles sur [ GitHub](https://github.com/poppy-project).

Le projet Poppy a été conçu initialement à [ Inria dans l'équipe Flowers](http://www.inria.fr/equipes/flowers/).

## Les robots Poppy

Les robots Poppy sont open source et libre. Leur sources sont disponible librement, il est possible de les modifier et de les redistribuer selon les termes prévus par leur licenses. Les pièces matérielles (carte électronique et modélisation 3D) sont sous license ([Creative Commons Attribution-ShareAlike](http://creativecommons.org/licenses/by-sa/4.0/) et le logiciel [GPLv3](http://www.gnu.org/licenses/gpl-3.0.en.html). Ils ont été tous conçus selon les même principes.

Les robots Poppy:

* sont fabriqués à partir de pièces imprimable en 3D et des servomoteurs Dynamixel,
* utilisent un ordinateur embarqué Raspberry Pi,
* fonctionnent avec une bibliothèque logicielle en Python, [pypot](../software-libraries/pypot.md), qui permet de contrôler les servomoteurs Dynamixel simplement,
* sont également contrôlable avec les même outils dans un simulateur ([ CoppeliaSim](http://www.coppeliarobotics.com)),
* peuvent être contrôlé à l’aide des langages de programmation visuels [Scratch](https://scratch.mit.edu/) et ([Snap!](http://snap.berkeley.edu) une variante de Scratch) et un langage textuel [Python](https://www.python.org). Ils sont également programmables via une [API REST](../programming/rest.md), ce qui permet se s'interfacer avec d'autres languages de programmation
* viennent avec un documentation associée, des tutoriels, des exemples et des activités pédagogiques.

Ils peuvent être utilisés comme tels quels ou hackés (au sens de bidouillé) pour explorer de nouvelles formes, ajouter des capteurs, etc...

Pour obtenir votre propre robot Poppy, vous pouvez soit:
* vous procurer toutes les pièces en suivant la liste du matériel (voir ci-dessous).
* Acheter un des robots Poppy en kit complet chez notre [ revendeur officiel, Génération Robots](http://www.generationrobots.com/en/279-poppy-opensource-robotics-platform).

### Poppy Ergo Jr

Le robot Poppy Ergo Jr est un petit bras robot à faible coût avec dôté de 6 articulations. Il est fait de 6 moteurs peu cher (XL-320 servomoteurs Dynamixel servos) avec des pièces simples imprimés 3D.

![Poppy Ergo Jr](../assembly-guides/ergo-jr/img/ErgoJr.jpg)

Les pièces 3D ont été conçues pour être facilement imprimable sur une imprimante 3D basique. Les moteurs coûtent seulement 20€ chacun. L'accès à sa carte électronique est simple. Elle facilite la connexion des capteurs supplémentaires et est bien adaptée à des fins pédagogiques.

Vous pouvez choisir parmi trois outils à la fin de son bras:

* Un abat-jour.
* Une pince.
* Un porte stylo.

Les rivets utilisés rendent le changement d'outil simple à faire. Vous pouvez l’adapter selon le type d’activités que vous faites.

![Outils pour Ergo Jr](../assembly-guides/ergo-jr/img/ergo_tools.gif)

Poppy Ergo Jr est le robot idéal pour apprendre la robotique sans difficultés : assemblage simple, facile à contrôler et à un prix abordable.

Vous pouvez vous procurez toutes les pièces en suivant [la nomenclature](https://github.com/poppy-project/poppy-ergo-jr/blob/master/doc/bom.md) (BOM) et imprimer les [pièces 3D](https://github.com/poppy-project/poppy-ergo-jr/releases/) disponible au format STL.

Pour plus d'informations, jetez un coup d'oeil au [guide d'assemblage de l'Ergo Jr](../assembly-guides/ergo-jr/README.md).

### Poppy Humanoid

C’est un robot humanoïde composé de 25 articulations avec une colonne vertébrale entièrement actionnée. Il est utilisé pour l'éducation, la recherche (étude de la marche, l’interaction Homme-robot) ou encore pour des performances artistiques. D'un bras au robot complet, cette plateforme est activement utilisée dans les laboratoires, les écoles d'ingénieur, les fablabs et les projets artistiques.

Vous pouvez vous procurez toutes les pièces en suivant [la nomenclature](https://github.com/poppy-project/poppy-humanoid/blob/master/hardware/doc/BOM.md) (BOM) et imprimer les [pièces 3D](https://github.com/poppy-project/poppy-humanoid/releases/tag/hardware_1.0.1/) disponible au format STL.

![Humanoid Poppy Vecto](../img/humanoid/vecto.png)

### Poppy Torso

C'est la partie supérieure du robot Poppy Humanoid (13 articulations). Poppy Torso est donc plus abordable qu'un Poppy Humanoid. Ce robot offre une solution plus adaptée aux besoins de l'éducation, des associations et des bricoleurs. Poppy Torso peut être un bon moyen pour apprendre les sciences, les technologies de l'information, l’ingénierie et les mathématiques (STIM).

Vous pouvez vous procurez toutes les pièces en suivant [la nomenclature](https://github.com/poppy-project/poppy-torso/blob/master/hardware/doc/BOM.md). Les [modèles 3D](https://github.com/poppy-project/poppy-humanoid/releases/tag/hardware_1.0.1/) pour les pièces sont les mêmes que pour Poppy Humanoid, mais sans les jambes et avec un [support ventouse](https://github.com/poppy-project/robot-support-toolbox/) en plus.

![Torse Poppy Vecto](../img/torso/vecto.png)

### Autres créatures Poppy intéressantes

Un aspect clé du projet Poppy est de stimuler la créativité et l’expérimentation autour de la robotique. Nous essayons de fournir tous les outils nécessaires pour concevoir de nouveaux robots basées sur les mêmes briques technologiques. Quelques nouvelles créatures sont en développement au sein de la communauté. Certaines d'entre elles sont illustrées ci-dessous.

#### Poppy bras droit (travail en cours)

Poppy bras droit est une créature Poppy basé sur le bras droit du robot Poppy Humanoid, avec 3 moteurs XL-320 supplémentaires pour améliorer la portée et l'agitilité du bras. Il utilise le même outil de préhension utilisé par l’Ergo Jr, conçu pour attraper des objets simples.

<img src="../img/poppy-right-arm.jpg" alt="Poppy bras droit" height="400" />

Le projet a été réalisé lors d’un stage au sein de l'équipe Flowers de l'Inria par [Joel Ortiz Sosa](https://github.com/joelortizsosa). Pour plus d'informations et les sources jetez un coup d'oeil au [répertoire](https://github.com/poppy-project/poppy-6dof-right-arm).

#### Des Humanoid plus petits et moins chers

##### Heol

Heol - « soleil » en Breton - est un robot humanoïde haut de 34cm fait par l’association Heol robotique. Composé de 23 moteurs, toutes les autres pièces sont imprimés en 3D. Il utilise également la bibliothèque pypot pour ses mouvements.

Le but de Heol est de donner le sourire aux enfants malades. Il peut être un outil pédagogique en devenant une plateforme d'apprentissage pour la conception mécanique et de programmation.

Sa participation à la RoboCup (coupe du monde de football pour robots) est également envisagée.

![Heol](../img/heol.jpg)

##### Poppyrate

C'est un robot basé sur le Poppy Humanoid. Il vise à développer une version plus abordable grâce à sa petite taille et l’utilisation de moteurs encore moins chers. La réduction de la taille rend également plus facile l'impression des pièces avec une imprimante 3D standard. L'objectif donné est de rendre le robot aussi mobile et customisable que possible tout en maintenant sa compatibilité avec la plateforme Poppy.

Poppyrate sera vendu en kit (avec ou sans les pièces 3D). Il a été conçu par l'entreprise ZeCloud.

![Poppyrate](../img/poppyrate.jpg)

Pour plus d’informations, consultez leur [Twitter](https://twitter.com/poppyratproject) - [Facebook](https://www.facebook.com/Poppyrate/)!