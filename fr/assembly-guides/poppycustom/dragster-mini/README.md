# Guide d’assemblage pour le Dragster mini

![Outil d'Ergo Jr](img/Dragster.jpg)

Poppy Dragster mini est un petit robot éducatif peu coûteux basé sur l'Ergo Jr qui est une combinaison d'un petit bras robotique avec 3 degrés de liberté monté sur une plate-forme avec deux roues. Il est fait de formes simples qui peuvent être imprimées en 3D. Ils sont assemblés par de petites vis en plastique (rivets) qui peuvent être mis ou enlevés très rapidement avec l'outil OLLO.

Son extrémité peut être facilement modifiée. Vous pouvez choisir parmi plusieurs outils : * une lampe, * une pince, * ou un porte-stylo.

Grâce aux vis, les outils peuvent être rapidement et facilement échangés. Cela permet d'adapter l'outil selon votre utilisation du robot et de assembler / démonter votre robot facilement.

Les moteurs XL-320 ont les mêmes caractéristiques que celles utilisées sur d'autres robots Poppy, mais sont légèrement moins puissants et moins précis. L'avantage est qu'ils sont aussi beaucoup moins chers.

Le tableau électronique est visible à côté du robot, ce qui est intéressant pour comprendre, manipuler et connecter des capteurs supplémentaires. Aucun soudage n'est nécessaire, il suffit d'ajouter la carte d'extension pixl aux pins du Raspberry Pi pour connecter les moteurs XL-320.

![Carte Pixl](img/pixl.jpg)

<!-- Should be updated from https://github.com/poppy-project/poppy-ergo-jr/blob/master/doc/bom.md -->

## Instructions

Ce chapitre vous guidera à travers toutes les étapes nécessaires pour assembler un Poppy Dragster mini . Il couvrira :

- [la configuration des moteurs](motor-configuration.md)
- [l'assemblage électronique](electronic-assembly.md)
- [assemblage de pièces mécaniques](mechanical-construction.md)

**L'assemblage complet doit prendre une heure ou deux** la première fois que vous en construisez un. Avec plus de pratique, une demi-heure suffit.

À la fin du tutoriel, vous devriez avoir un Poppy Dragster Mini fonctionnel, prêt à fonctionner !

Nous vous recommandons de suivre attentivement les instructions. Même si l'Ergo Jr est facilement démontable, il est toujours décevant d’avoir besoin de recommencer une partie de l'assemblage parce qu'on a oublié configurer les moteurs, ou qu'un moteur est inversé.

## Liste du matériel pour le Dragster mini 

- 1 x [Panneau d'extension Pixl](https://github.com/poppy-project/pixl) *(Tableau de contrôle du moteur XL320 à partir d'un Raspberry Pi)*
- les pièces imprimées en 3D [au format STL ici](https://github.com/tgll/poppy-dragster-mini/tree/master/doc/stl) 
  - 1 x [dragster-base.stl](https://github.com/tgll/poppy-dragster-mini/tree/master/doc/stl/dragster-base.stl)
  - 1 x [dragster-basefront.stl](https://github.com/tgll/poppy-dragster-mini/tree/master/doc/stl/dragster-basefront.stl)
  - 2 x [dragster-wheel.stl](https://github.com/tgll/poppy-dragster-mini/tree/master/doc/stl/dragster-wheel.stl)
  - 1 x [base.stl](https://github.com/poppy-project/poppy-ergo-jr/raw/master/hardware/STL/base.stl) 
  - 2 x [4dofs-horn2horn-5holes.stl](https://github.com/tgll/poppy-dragster-mini/tree/master/doc/stl/4dofs-horn2horn-5holes.stl)
  - 4 x [side2side.stl](https://github.com/tgll/poppy-dragster-mini/tree/master/doc/stl/4dofs-side2side.stl)
  - 1 x [long_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/long_U.stl)
  - les outils (optionnel) 
    - 1 x [lamp.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/lamp.stl)
    - 1 x [gripper-fixation.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixation.stl)
    - 1 x [gripper-fixed_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixed_part.stl)
    - 1 x [gripper-rotative_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-rotative_part.stl)
    - 1 x [pen-holder.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-holder.stl)
    - 1 x [pen-screw.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-screw.stl)

## Pièces fabriquées par Robotis

- 6 x servomoteurs dynamixel XL-320
- 1 x ensemble de rivets OLLO (vous aurez besoin d'environ 70 rivets colorée et 1 rivet gris)
- 1 x outil OLLO

## Electronique Divers

- 1x Raspberry Pi 2 ou 3
- 1x micro SD 8Go (ou plus)
- 1x caméra Raspberry Pi
- 1 x alimentation 7.5V 2A avec un connecteur 2.1 x 5.5 x 9,5 ([celle-ci](http://fr.rs-online.com/web/p/alimentations-enficables/7262814/?searchTerm=ECP-15-7.5E&relevancy-636F3D3226696E3D4931384E4B6E6F776E41734D504E266C753D6672266D6D3D6D61746368616C6C7061727469616C26706D3D5E5B5C707B4C7D5C707B4E647D2D2C2F255C2E5D2B2426706F3D313326736E3D592673743D4D414E5F504152545F4E554D4245522677633D424F5448267573743D4543502D31352D372E354526data=&p=sRA) par exemple).
- câble Ethernet

<!--
TODO: assembly web interface
## Assembly web interface

Directly, from the web interface (see Chapter [Setup your Raspberry-Pi](#TODO) if you have not seen how to access it) you have access to a notebook presenting the assembly steps. It also allows the configuration of motors at the indicated steps.

It is the best way to easily assemble your robot as it will integrate all steps described in the following sections and moreover allows you to directly configure your motor so they are ready to use.
 -->