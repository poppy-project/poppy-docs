# Guide d’assemblage pour l'Ergo Jr

![Outil d'Ergo Jr](img/ErgoJr.jpg)

Poppy Ergo Jr est un robot éducatif peu onéreux qui se présente sous la forme d'un petit bras robotique à 6 degrés de liberté. Il se compose de formes très simples qui peuvent être facilement imprimés en 3D. Elles sont assemblées par des rivets qui peuvent être mis ou enlevés très rapidement avec l’outil OLLO.

Son embout peut être facilement changé. Vous pouvez choisir parmi plusieurs outils : * un abat-jour, * une pince, * ou un porte-stylo.

Grâce aux rivets ils peuvent être rapidement et facilement échangés. Cela permet d’adapter l'outil en fonction en fonction de vos utilisation du robot.

Les moteurs Xl-320 ont les mêmes fonctionnalités que ceux utilisé sur les autres robots Poppy, mais sont légèrement moins puissants et moins précis. L’avantage étant qu’ils sont aussi nettement moins chers.

La carte électronique est visible à côté du robot, ce qui est intéressant pour comprendre, manipuler et brancher des capteurs supplémentaires. Aucune soudure n’est nécessaire, il vous suffit d’ajouter la carte d'extension pixl sur les broches de la Raspberry Pi pour y connecter les moteurs XL-320.

Ce chapitre vous guidera à travers toutes les étapes nécessaires pour assembler entièrement un Poppy Ergo Jr. Il couvrira :

- [la configuration des moteurs](motor-configuration.md)
- [l'assemblage électronique](electronic-assembly.md)
- [l'assemblage des pièces mécaniques](mechanical-construction.md)

**L'assemblage complet ne devrait prendre qu'une heure ou deux** la première fois que vous en construisez un. Avec plus de pratique, une demi-heure suffit grandement.

À la fin du tutoriel, vous devriez avoir un Poppy Ergo Jr fonctionnel, prêt à être contrôlé !

Nous vous recommandons de suivre attentivement les instructions. Même si l'Ergo Jr est facilement démontable, il est toujours décevant d’avoir besoin de recommencer une partie de l'assemblage parce qu'on a oublié configurer les moteurs, ou qu'un moteur est inversé.

<!-- Should be updated from https://github.com/poppy-project/poppy-ergo-jr/blob/master/doc/bom.md -->

## Liste du matériel

Vous trouverez ici la liste complète du matériel nécessaires pour construire un Poppy Ergo Jr.

## Matériel de l'Ergo Jr

- 1 x [carte d'extension Pixl](https://github.com/poppy-project/pixl) *(carte électronique de contrôle des moteurs XL320 depuis une Raspberry Pi)*
- 1 x [disk_support.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/disk_support.stl) (coupé à la découpe laser) le plan 2D peut être trouvé [ici](https://github.com/poppy-project/poppy-ergo-jr/tree/master/hardware/laser_cutting). *Vous pouvez également fabriquer la base avec une imprimante 3D, mais cela prendra beaucoup de temps*
- les pièces imprimées en 3D [au format STL ici](https://github.com/poppy-project/poppy-ergo-jr/tree/master/hardware/STL) 
  - 1 x [base.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/base.stl)
  - 3 x [horn2horn.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/horn2horn.stl)
  - 3 x [side2side.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/side2side.stl)
  - 1 x [long_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/long_U.stl)
  - 1 x [short_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/short_U.stl)
  - 1 x [support_camera.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/support_camera.stl)
  - les différents outils 
    - 1 x [lamp.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/lamp.stl)
    - 1 x [gripper-fixation.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixation.stl)
    - 1 x [gripper-fixed_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixed_part.stl)
    - 1 x [gripper-rotative_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-rotative_part.stl)
    - 1 x [pen-holder.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-holder.stl)
    - 1 x [pen-screw.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-screw.stl)

## Pièces faites par Robotis

- 6 x servomoteurs dynamixel XL-320
- 1 x jeu de rivets OLLO (vous aurez besoin d'environ 70 rivets colorés et de 4 rivets gris)
- 1 x outil OLLO

## Visserie

- 4 x M2.5x6mm vis (pour fixer la Raspberry Pi sur le socle)
- 4 x M2x5mm vis (pour fixer la caméra)
- 4 écrous x M2 (fixation caméra)
- 1 x entretoise M2.5 mâle/femelle 10mm

## Divers Electronique

- 1x Raspberry Pi 2 ou 3
- 1x micro SD 8Go (ou plus)
- 1x caméra Raspberry Pi
- 1 x alimentation 7.5V 2A avec un connecteur 2.1 x 5.5 x 9,5 ([celle-ci](http://fr.rs-online.com/web/p/alimentations-enfichables/7262814/?searchTerm=ECP-15-7.5E&relevancy-data=636F3D3226696E3D4931384E4B6E6F776E41734D504E266C753D6672266D6D3D6D61746368616C6C7061727469616C26706D3D5E5B5C707B4C7D5C707B4E647D2D2C2F255C2E5D2B2426706F3D313326736E3D592673743D4D414E5F504152545F4E554D4245522677633D424F5448267573743D4543502D31352D372E354526&sra=p) par exemple).
- Câble Ethernet court

<!--
TODO: assembly web interface
## Assembly web interface

Directly, from the web interface (see Chapter [Setup your Raspberry-Pi](#TODO) if you have not seen how to access it) you have access to a notebook presenting the assembly steps. It also allows the configuration of motors at the indicated steps.

It is the best way to easily assemble your robot as it will integrate all steps described in the following sections and moreover allows you to directly configure your motor so they are ready to use.
 -->