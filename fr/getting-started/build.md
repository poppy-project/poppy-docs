# Assembler le robot

![Assemblage robot Poppy](../img/assembly_pretty.jpg)

Le temps d'assemblage, les compétences requises, les outils et la difficulté varient selon selon les robots Poppy que vous voulez utilisez. Alors que construire un Ergo Jr devrait vous prendre environ une heure et cela sans outil spécifique, assembler un Humanoid peut vous prendre plusieurs jours et un sacré nombre de vis !

This section intends to give you hints and a glimpse of some critical points so you aware of them before digging into the construction.

More resources and a detailed step by step assembly procedure for each robot are available in the [assembly guide](../assembly-guides/README.md) section.

## Assembler un Ergo Jr

> **Note** You can find a full assembly documentation in the chapter [step by step assembly of an Ergo Jr](../assembly-guides/ergo-jr/README.md).

<!-- TODO: refaire une belle photo avec la vraie BOM -->

![ergo-jr assembly](../assembly-guides/ergo-jr/img/assembly/steps/ErgoJr_assembly.gif)

The Ergo Jr robot was designed to be a simple little robot, cheap and easy to use. The 3D parts were made so they can be easily printed on a basic 3D printer and the motors (6 XL-320 Dynamixel servos) are only 20$ each.

Thanks to OLLO rivets the robot is simple to assemble. These rivets can be removed and added quickly with the OLLO tool. It should not take more than one hour to entirely built it.

You can also change easily the end effector of the robot among these tools: a lamp, a gripper, a pen holder...

<!-- TODO: image des rivets et du tool en action -->

Except from **checking the motor orientation**, there is not really any pitfall. If you are familiar with Lego bricks, you should be able to assemble an Ergo Jr without much problem! Rivets were made to be as easy to assemble than to disassemble, so in case of problem you can just start over!

Also make sure, to [**configure your motors**](../assembly-guides/ergo-jr/motor-configuration.md) before assembling the robot as it is harder to do after!

## Assembling a Torso or a Humanoid

> **Note** Vous pouvez trouver la documentation complète de l’assemblage dans le chapitre [montage pas-à-pas du robot Humanoid](../assembly-guides/poppy-humanoid/README.md).

![Poppy Humanoid BOM](../img/humanoid/bom.jpg)

Building a Poppy Torso or a Humanoid is more complex than a Ergo Jr but it is not really more complicated than building a Meccano or some Swedish furniture. It mainly consists on those few steps:

<!-- TODO: add links of the advanced doc -->

- assemble the horn on each motors: **you will have to be really cautious about the motor zero position!**
- configure the motors so they match the *poppy configuration*
- use a lot of screws to connect all 3D printed parts to the motors
- faire un peu d'électronique pour la carte embarquée au niveau de la tête : cela peut se révéler un peu difficile si vous n'êtes pas familier avec cette discipline.

**La patience et la précision** sont vos meilleurs atouts, mais en cas d'erreurs, pas de panique : les robots Poppy sont faits pour être montés et démontés. Si vous faites attention des **mises en garde** suivantes, après quelques essais/erreurs vous aurez un Poppy Torso ou Humanoid en état de marche :

*Mise en garde 1 : Les robots Poppy Humanoid ou Torso fonctionnent principalement avec des servomoteurs Dynamixel MX-28 et MX-64. Ils sont plutôt puissants et peuvent être dangereux si l'on s'y coince les doigts. Donc soyez prudent et mettez le robot dans un environnement dégagé pendant que vous le testez !*

*Mise en garde 2 : Alignez le palonnier avec le repère sur l'axe du servomoteur.*

<img src="../img/humanoid/horn.jpg" alt="palonnier" style="height: 350px;" /><img src="../img/humanoid/axe.jpg" alt="axe" style="height: 350px;" />

*Mise en garde 3 : Ajustez les trois repères du palonnier avec les trois repères de la pièce 3D.*

![](../img/humanoid/three_dots.jpg)

*Mise en garde 4 : Utilisez du frein filet pour éviter le déliement des vis dues aux vibrations. Cependant, poser l'extrémité de la vis sur le frein filet est amplement suffisant. **Si vous mettez trop de frein filet vous risquez de coller définitivement vos vis et rendre très compliqué tout démontage !***

<!-- TODO: Add directly the youtube playlist of poppy torso and humanoid-->

**Guide d'assemblage pas-à-pas :**

- [Guide pour Poppy Humanoid](https://github.com/poppy-project/poppy-humanoid/blob/master/hardware/doc/Poppy_Humanoid_assembly_instructions.md)
- [Guide pour Poppy Torso](https://github.com/poppy-project/poppy-torso/blob/master/hardware/doc/Poppy_Torso_assembly_instructions.md)