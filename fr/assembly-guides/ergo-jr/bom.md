
# Poppy Ergo Jr: Liste des composants (BOM)

D'abord, ouvrez votre boîte, sortez tous les composants de leur carton ou sachet et préparez un espace de travail propre et espacé. Regardons le contenu de votre kit !
Si vous imprimrez votre propre robot en 3D, cette liste vous aidera également à vérifier que vous disposez de tous les composants requis.

## Ce qui est inclu ...
- 1x carte Raspberry Pi board: cette carte est le mini-ordinateur jouant le rôle du cerveau de votre robot
- 1x carte microSD avec le logiciel Poppy préinstallé : elle s'insère dans la Raspberry Pi
- 1x caméra pour Raspberry Pi camera, avec sa nappe (càd son câble plat)
- 1x alimentation 7.5V 2A avec un adaptateur Jack 2.1 x 5.5 x 9.5 (généralement [ce modèle](http://fr.rs-online.com/web/p/alimentations-enfichables/7262814/?searchTerm=ECP-15-7.5E))
- 1x câble Ethernet court pour communiquer avec le robot avant d'activer le Wifi
- 6x moteurs XL-320: ces moteurs, accompagnés d'un câble noir chacun, s'appellent des **servomoteurs** : ils sont plus intelligents qu'un moteur basique car ils sont capables de respecter une consigne de position angulaire ou de vitesse de rotation
- 1x [carte Pixl](https://github.com/poppy-project/pixl): cette petite carte s'enfile sur le connecteur supérieur de la Raspberry Pi pour lui permettre de communiquer avec les moteurs XL-320
- 1x sac de rivets Ollo (environ 70 de couleur et 4 gris)
- 1x outil Ollo: cet outil noir permet d'enfiler et retirer des rivets Ollo
- **Pièces en impression 3D**: Soit à imprimer vous-mêmes grâce aux [fichiers STL](https://github.com/poppy-project/poppy-ergo-jr/tree/master/hardware/STL) soit vous les avez dans votre kit :
    - 1x [base.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/base.stl)
    - 3x [horn2horn.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/horn2horn.stl)
    - 3x [side2side.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/side2side.stl)
    - 1x [long_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/long_U.stl)
    - 1x [short_U.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/short_U.stl)
    - 1x [support_camera.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/support_camera.stl)
    - les outils pour votre robot (effecteurs):
        - 1x [lamp.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/lamp.stl)
        - 1x [gripper-fixation.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixation.stl)
        - 1x [gripper-fixed_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixed_part.stl)
        - 1x [gripper-rotative_part.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-rotative_part.stl)
        - 1x [pen-holder.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-holder.stl)
        - 1x [pen-screw.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/pen-screw.stl)
    - 1x [disk_support.stl](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/disk_support.stl) c'est un disque découpé par une machine laser pour reevoir votre robot ([plans ici](https://github.com/poppy-project/poppy-ergo-jr/tree/master/hardware/laser_cutting)).
- **Screws**:
    - 4x vis M2.5x6mm pour fixer la RAspberry Pi sur la base
    - 4x vis M2x5mm pour fixer la caméra
    - 4x écrous M2 pour fixer la caméra
    - 1x entretoise Male/Femelle M2.5 10mm pour empêcher la carte Pixl de bouger

[**>> Etape suivante: Assemblage électronique**](electronic-assembly.md)