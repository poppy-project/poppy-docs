# Guide d'assemblage du Ergo Jr

![Ergo-tool](../../../en/assembly-guides/ergo-jr/img/ErgoJr.jpg)

Le robot Poppy Ergo JR est un petit bras robotique articulé à 6 degrés de liberté. Il consiste de formes très simple qui peuvent être facilement imprimées en 3D. Elles sont assemblées avec des rivets OLLO qui peuvent être montés et démontés facilement avec l'outil OLLO.

L'extrêmité du bras peut être facilement changée. Vous pouvez choisir entre plusieurs outils :

* Une lampe.
* Une pince.
* Un porte-stylo.

Les rivets employés rendent le montage et démontage des outils simples. Vous pouvez les adapter en fonction de l'activité choisie.

Les moteurs ont la même fonctionnalité que d'autres créatures Poppy mais sont un peu moins puissants ou précis, l'avantage étant bien sûr qu'ils sont moins chers.

La carte électronique Pixl située à côté du robot est très facile d'usage et très avantageuse pour manipuler et connecter de nouveaux capteurs.
Nul soudage n'est nécessaire, il suffit d'ajouter la carte Pixl au-dessus des connecteurs de votre Raspberry Pi.

Ce guide vous conduira à travers toutes les étapes nécessaires pour assembler votre Robot Poppy. Il comporte les chapitres suivants :

* [Configuration des moteurs](motor-configuration.md)
* [Assemblage de l'électronique](electronic-assembly.md)
* [Construction mécanique](mechanical-construction.md)

**L'assemblage complet ne devrait pas prends plus d'une ou deux heures**  la première fois. Avec plus d'entraînement une demi heure sera largement suffisante.

À la fin de l'assemblage vous aurez un Poppy Ergo Jr en état de fonctionnement, prêt à l'action !

Nous vous recommandons de suivre à la lettre les instructions même si le Ergo Jr peut-être facilement démonté, il est toujours décevant de devoir recommencer depuis zéro parce que vous avez oublié de configurer les moteurs, qu'un fil est manquant ou qu'un moteur est mis à l'envers.


<!-- Should be updated from https://github.com/poppy-project/poppy-ergo-jr/blob/master/doc/bom.md -->
## Liste du matériel

Vous trouverez ici la liste complète du matériel requis (en Anglais : Bill of Material ou BOM) pour assembler un Poppy Ergo Jr.

## Materiel pour Poppy

- 1x [carte d'extension Pixl](https://github.com/poppy-project/pixl) *(pour contrôler les moteurs XL320 )*
- 1x Disque de support [disk_support.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/disk_support.stl) (utilisant la découpe laser) le plan 2D [peut être trouvé ici](https://github.com/poppy-project/poppy-ergo-jr/tree/master/hardware/laser_cutting). *Vous pouvez aussi l'imprimer en 3D mais cela prendra plus de temps*.
- Les pièces imprimés en 3D [ici au format STL](https://github.com/poppy-project/poppy-ergo-jr/tree/master/hardware/STL)
  - 1x [base.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/base.stl)
  - 3x "Palonnier à Palonnier" [horn2horn.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/horn2horn.stl)
  - 3x "Côté à côté" [side2side.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/side2side.stl)
  - 1x "U Long" [long_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/long_U.stl)
  - 1x "U Court" [short_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/short_U.stl)
  - 1x Support caméra [support_camera.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/support_camera.stl)
  - Les différents outils
    - 1x Abat-jour [lamp.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/lamp.stl)
    - 1x Attache Pince [gripper-fixation.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixation.stl)
    - 1x Partie Fixe Pince [gripper-fixed_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixed_part.stl)
    - 1x Partie Rotative Pince [gripper-rotative_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-rotative_part.stl)
    - 1x Porte-Stylo [pen-holder.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-holder.stl)
    - 1x Vis à Stylo [pen-screw.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-screw.stl)

## Pièces Robotis
- 6x moteurs Robotis dynamixel XL-320
- 1x jeu de rivets OLLO (70 rivets de couleurs et 4 gris)
- 1x Outil OLLO

## Vis
- 4x vis M2.5x6mm (pour attacher le Raspberry Pi sur la base)
- 4x vis M2x5mm  (pour attacher la caméra)
- 4x écrous M2  (pour attacher la caméra)
- 1x Support Male/Femelle M2.5 10mm

## Fournitures électroniques
- 1x Raspberry Pi 2
- 1x micro SD 8Go
- 1x caméra Rasperry Pi
- 1x alimentation AC 7.5V 2A avec un connecteur jack 2.1 x 5.5 x 9.5 ([par exemple](http://fr.rs-online.com/web/p/alimentations-enfichables/7262814/?searchTerm=ECP-15-7.5E&relevancy-data=636F3D3226696E3D4931384E4B6E6F776E41734D504E266C753D6672266D6D3D6D61746368616C6C7061727469616C26706D3D5E5B5C707B4C7D5C707B4E647D2D2C2F255C2E5D2B2426706F3D313326736E3D592673743D4D414E5F504152545F4E554D4245522677633D424F5448267573743D4543502D31352D372E354526&sra=p) for instance).
- Un cable ethernet court


<!--
TODO: assembly web interface
## Assembly web interface

Directly, from the web interface (see Chapter [Setup your Raspberry-Pi](#TODO) if you have not seen how to access it) you have access to a notebook presenting the assembly steps. It also allows the configuration of motors at the indicated steps.

It is the best way to easily assemble your robot as it will integrate all steps described in the following sections and moreover allows you to directly configure your motor so they are ready to use.
 -->
