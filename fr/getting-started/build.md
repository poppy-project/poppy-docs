## Assembler le robot

![Poppy](../../en/img/assembly_pretty.jpg)

Suivant quel robot Poppy vous souhaitez utiliser, le temps d'assemblage, les compétences requises, les outils et la difficulté peuvent varier de beaucoup.
Construire un Ergo Jr devrait prendre une heure et aucun outillage spécifique n'est requis, alors que l'assemblage de l'Humanoïde Poppy devrait prendre plusieurs jours et de nombreuses vis.

Cette section vise à vous donner des conseils et un aperçu de quelques points importants afin que vous en soyez familiers avant d'entamer la construction. Nous allons aussi vous diriger vers les chapitres dédiés où vous trouverez les ressources et les procédures d'assemblage détaillées pas-à-pas de chaque robot.

### Assembler un Ergo Jr

> **Note** Vous pouvez trouver la documentation d'assemblage complète dans le chapitre [assemblage pas-à-pas d'un Ergo Jr](../assembly-guides/ergo-jr/README.md).

<!-- TODO: refaire une belle photo avec la vraie BOM -->
![Assemblage ergo-jr](../../en/assembly-guides/ergo-jr/img/assembly/steps/ErgoJr_assembly.gif)

Le robot Ergo Jr a été conçu pour être un petit robot, bon marché et facile à utiliser. Les pièces 3D ont été faites pour être imprimées facilement sur une imprimante 3D standard et les moteurs (6 servos XL-320 Dynamixel) ne coûtent que 20$ chacun.

Le Ergo Jr est très facile à construire et son appendice peut être facilement changé - vous pouvez choisir parmi plusieurs outils : une lampe, une pince, un support pour stylo...

Grâce aux rivets OLLO le robot est vraiment simple à assembler. Ces rivets peuvent être enlevés et ajoutés très facilement avec l'outil OLLO. Il ne devrait pas prendre plus d'une heure à être entièrement construit, ce qui permet une grande liberté de modification.

<!-- TODO: image des rivets et du tool en action -->

Mis à part le calibrage de l'orientation des moteurs, il n'y a pas de difficulté majeure. Si vous êtes familiers avec les briques Lego, vous devriez être capable d'assembler un Ergo Jr sans trop de problèmes! Les rivets sont pensés pour être faciles à assembler et désassembler, alors en cas de problème vous pouvez simplement redémarrer à zéro!
Assurez vous de [**configurer les moteurs**](../assembly-guides/ergo-jr/motor-configuration.md) avant d'assembler le robot car il est plus difficile de le faire après!

### Assembler un Torse ou un Humanoïde

> **Note** Vous pouvez trouver la documentation d'assemblage complète dans le chapitre [assemblage pas-à-pas d'un Humanoïde Poppy](../assembly-guides/poppy-humanoid/README.md).

![Poppy Humanoid BOM](../../en/img/humanoid/bom.jpg)

Construire un Torse Poppy ou un Humanoïde est plus complexe qu'un Ergo Jr mais ca n'est pas plus compliqué que de monter un Meccano ou un meuble Suédois. Cela consiste en les quelques étapes suivantes:

<!-- TODO: add links of the advanced doc -->
* assembler le support de chaque moteur: **soyez très attentif à la position zéro du moteur!**
* configurer les moteurs afin de se conformer à la *configuration poppy*
* utiliser de nombreuses vis pour connecter toutes les parties imprimées 3D aux moteurs
* faire un peu d'électronique pour la carte embarquée à l'intérieur de la tête : cela peut être un peu ardu si vous n'êtes pas familier avec l'électronique.


La **Patience et la précision** sont vos alliées, mais en cas d'erreur, ne paniquez pas: Poppy est un robot prévu pour être monté et démonté. Si vous êtes attentifs aux quelques **avertissements** ci-dessous, et au prix de quelques essais et erreurs, vous aurez un Torse Poppy ou un Humanoïde en état de marche :

*Avertissement 1: L'Humanoïde Poppy et le Torse Poppy sont construits avec des moteurs servos de type Dynamixel MX-28 et MX-64. Il s'agit de moteurs puissants et ils peuvent représenter un risque de dommage pour vos doigts et les matériaux autour. Soyez prudent et placez le robot dans un espace non encombré pendant les tests que vous effectuerez*.

*Avertissement 2: Alignez le point du support moteur ("horn") et le point sur l'axe du servo.*

<img src="../../en/img/humanoid/horn.jpg" alt="horn" style="height: 350px;"/><img src="../../en/img/humanoid/axe.jpg" alt="axe" style="height: 350px;"/>

*Avertissement 3: Ajustez les trois points des moteurs avec les trois points de la partie structurelle.*

![](../../en/img/humanoid/three_dots.jpg)

*Avertissement 4: Utilisez du freinfilet afin d'éviter que les vibrations ne desserrent les vis.  Par contre, tremper l'extrémité de la vis dans le freinfilet est suffisant (n'appliquez pas de freinfilet directement sur les trous de vis, cela serait trop et le démontage s'avèrerait très difficile!)*

<!-- TODO: Add directly the youtube playlist of poppy torso and humanoid-->

**Guides d'assemblage pas-à-pas :**

- [Guide pour l'Humanoïde](https://github.com/poppy-project/poppy-humanoid/blob/master/hardware/doc/Poppy_Humanoid_assembly_instructions.md)
- [Guide pour le Torse](https://github.com/poppy-project/poppy-torso/blob/master/hardware/doc/Poppy_Torso_assembly_instructions.md)
