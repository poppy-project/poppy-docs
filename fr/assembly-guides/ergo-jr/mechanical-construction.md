# 4. Assemblage mécanique

## 4.1. Avis et avertissements d'ordre général

* **Toutes les orientations des pièces sont très importantes**. Regarez les photos très précisément pour reproduire le même assemblage avec les pièces dans le même sens. Si vous vous trompez, vous vous en rendrez compte car votre robot réalisera des mouvements différents que ceux que vous lui demanderez. Le cas échéant n'ayez pas d'inquiétude, vous pourrez toujours le démonter puis le remonter.

* Vous pouvez pré-assembler tous les rivets dont vous avez besoin avant la construction du robot. Chaque rivet consiste en l'assemblage de deux éléments l'un dans l'autre comme ceci :

![Assemblage des rivets OLLO](img/assembly/ollo_rivet.png)

* Il y a 2 sortes de rivetsThere are two kinds of rivets. The grey ones and the others. Grey rivets are longer to be able to be inserted in the motor axis, at the opposite side of the horn (black revolving circle).

<img src="img/assembly/ollo_rivets_size.jpg" alt="Taille des rivets OLLO" height="200" />

* Utilisez l'outil OLLO pour pouvoir monter et démonter les rivets facilement.

<img src="img/assembly/ollo-tool.jpg" alt="Outil OLLO" height="200" />

* N'oubliez pas de passer les fils pendant l'assemblage de votre robot. Chaque moteur, excepté le dernier doit avoir ses 2 connecteurs occupés: l'un connecté au moteur précédent, l'autre connecté au moteur suivant. Il n'y a cependant pas d'importance quant-à quel connecteur est connecté au moteur suivant ou précédent.

* **vérifiez que le palonnier (la roue noire) du moteur est toujours dirigée vers le haut du moteur avant de l'assembler**, c'est à dire qu'il est en position zéro comme après une configuration. Sinon votre Poppy Ergo Jr aura l'air tout à fait bizarre.

<img src="img/assembly/align-horn.jpg" alt="Aligner les palonniers" height="200" />

* Tous les palonniers des moteurs (la roue noire) doivent être alignés **sur le côté gauche du robot** :

![Pallonniers sur le côté gauche](img/assembly/horns_on_left.jpg)

## 4.2. Guide pas à pas

### Configuration des moteurs 

Les moteurs doivent être individuellement configurés. Vous pouvez faire cela avant ou après la construction de votre robot mais dans la mesure ou cela nécessite d'avoir un seul moteur branché à la carte Pixl à la fois, il est généralement plus pratique de configurer les moteurs un-par-un, se souvenir du nom qu'il leur a été attribué, et assembler ce moteur au bon endroit dans le robot ensuite.

> **Attention** Pour configurer les moteurs, vous devez les connecter séparément un par un à la Raspberry Pi. Si vous essayez de configurer un nouveau moteur alors qu'il est connecté avec le moteur précédent, cela ne fonctionnera pas.

Pour plus d’informations, consultez la section précédente [configuration de moteur](motor-configuration.md).

### Etape 1 - moteur 1

Tout d’abord, démarrez votre robot et [configurez un moteur XL-320](motor-configuration.md) sous le nom « m1 ».

Montez ensuite le moteur sur la base imprimée en 3D.

![étape 1](img/assembly/steps/step_1-2.jpg)

Pour cela, préparez 8 petits rivets. Placez la première partie dans la seconde sans les mettre à l'intérieur du moteur. Ensuite, placez le moteur sur la base avec le palonnier (= la roue du moteur) faisant face au côté le plus ouvert. Utilisez l'outil Ollo pour attraper le rivet entre la première et la seconde partie du rivet puis insérez le rivet dans un des trous d'assemblage. Une fois le rivet en place, verrouillez-le en poussant la première partie du rivet vers la seconde.

### Étape 2 - moteur 2

Configurez le second moteur, son nom est « m2 ».

Monter la partie *long_U*. Soyez prudent avec l’orientation de la la pièce, le palonnier doit être orienté vers la gauche. Monter le moteur « m2 » sur le dessus de la construction.

![étape 2](img/assembly/steps/step_3-4.jpg)

### Étape 3 - moteur 3

Configurer un troisième moteur nommé « m3 ».

Monter les pièces *horn2horn* et *horn2side* sur moteur « m2 » et monter « m3 » sur le dessus de la construction. ![étape 3](img/assembly/steps/step_5-6.jpg)

### Étape 4 - moteur 4

Configurer le quatrième moteur nommé « m4 ».

Monter la pièce *short_U* sur le moteur 4. ![étape 4](img/assembly/steps/step_7-8.jpg)

Monter le moteur « m4 » et la pièce *short_U* préalablement assemblée au sommet de la construction. Le nez du moteur doit être orienté vers l'arrière de la base. ![étape 4 bis](img/assembly/steps/step_9-10.jpg)

### Étape 5 - moteur 5

Configurer le cinquième moteur nommé « m5 ».

Monter les pièces *horn2horn* et *horn2side* sur moteur « m4 » et monter « m5 » sur le dessus de la construction.

![étape 5](img/assembly/steps/step_11-12-13.jpg)

### Étape 6 - l’outil de votre choix

Configurer le sixième moteur nommé « m6 ».

Pour terminer votre Ergo Jr, vous devez ajouter l'outil de votre choix (effecteur) à son extrémité : un abat-jour, un porte stylo ou une pince. Suivez les instructions appropriées à l'outil choisi.

> **Note** Les outils peuvent être facilement et rapidement changés, ce qui vous permet d'adapter votre robot aux différentes activités.

#### Étape 6 Option 1 : L'abat-jour ou le stylo

Monter les pièces *horn2horn* et *horn2side* sur moteur « m5 » et monter « m6 » sur le sommet de la construction. ![étape 6](img/assembly/steps/step_14-16-17.jpg)

Vous pouvez monter le support de stylo ou de l’abat jour sur le moteur « m6 ». ![bis de l’étape 6](img/assembly/steps/step_18-19.jpg)

L'abat jour et le porte-stylo s'installent de la même manière.

<img src="img/assembly/steps/pen_holder.jpg" alt="step 6 pen" height="300" />

#### Étape 6 Option 2 : La pince

Montez la pièce [*gripper-fixation*](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixation.stl) entre les moteurs "m5" et "m6".

Monter la pièce *gripper-fixed_part* et *gripper-rotative_part* sur le moteur "m6".

Il y a deux façons de monter la pince, verticalement ![pince verticale](img/assembly/steps/grip1.jpg)

ou horizontalement ![pince horizontale](img/assembly/steps/grip2.jpg)

### Étape 7 - électronique

Monter la pièce *support_camera* sur la base. Fixez la caméra de Raspberry Pi sur le support et  camera on it and move the camera flex cable between motor "m1" and the base. ![step 7](img/assembly/steps/step_21-22.jpg)

**Nappe de caméra**

Pour connecter la caméra :
* ouvrez le connecteur de nappe en tirant le levier en plastique autour du connecteur
* vérifiez que la partie métallique du connecteur tournent le dos au porte Ethernet de la Raspberry Pi (RJ45)
* insérez la nappe dans le connecteur
* refermez le loquet en plastique

![step 7](img/assembly/steps/camera.jpg)

**Cales moteurs :**

Vous povuez maintenant chainer tous les moteurs les uns aux autres. Chaque moteur a au final ses deux connecteurs de branchés, le premier au moteur précédent et le deuxième au moteur suivant. Sauf le tout premier moteur, qui est connecté à la Pixl, et le dernier moteur qui n'a donc pas de moteur suivant.

> **Info** Les connecteurs du moteur « m1 » (à la base) sont un peu difficiles à brancher, vous pouvez utiliser l’outil OLLO pour vous aider.

![step 7 bis](img/assembly/steps/step_24.jpg)

### Étape 8 - fixer votre Ergo Jr sur le disque de support en bois

Montez votre Ergo Jr sur le disque en bois *disk-support*.

Montez la Raspberry Pi sur le disque, et utilisez des vis 4 x M2.5x6mm pour la fixer. <!-- TODO: picture of disk fixation -->

### Step 9 - Test final de votre robot !

Félicitations, vous avez réussi l'assemblage, il est temps de tester !

Terminez de suivre l'assistant de premier démarrage sur <http://poppy.local> :
* Cliquez sur *Démarrer l'API* 
* Cliquez sur *Démarrer une danse*

![Tester votre robot](img/IHM/start_api.png)

Votre robot doit désormais bouger, sans rentrer en collision avec le sol ni avec lui-même. S'il créé des collisions, vérifiez que toutes les pièces et les positions zéros des moteurs sont précisément comme sur les photos. Terminez de parcourir l'assistant de premier démarrage et découvrez tranquillement votre robot.

## 4.3. Programmer

Pour programmer votre robot consultez [la section dédiée](../../programming/)

![image](img/assembly/ergo-tool-2.jpg)
