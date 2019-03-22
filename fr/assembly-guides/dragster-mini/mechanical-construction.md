# Assemblage mécanique

## Avis et avertissements d'ordre général

* Vous pouvez assembler tout les rivets avant la construction du robot. **L'orientation est importante**, vous devez aligner les encoches de la premiere pièce (part 1) avec les fentes de la deuxième pièce (part 2). Il sera plus facile de les enlever ainsi.

![Assemblage des rivets OLLO](img/assembly/ollo_rivet.png)

* Il y a deux types de rivets : les gris, et les autres. Les gris sont plus longs et sont fait pour fixer les moteurs dans les pièces de type "U long" (vous n'aurez besoin que d'un seul gris pour le Dragster). La couleur des autres petit rivets n'a pas d'importance, vous pouvez choisir ceux que vous voulez.

<img src="img/assembly/ollo_rivets_size.jpg" alt="Taille des rivets OLLO" height="200" />

* Utilisez l'outil OLLO pour pouvoir monter et démonter les rivets facilement.

<img src="img/assembly/ollo-tool.jpg" alt="Outil OLLO" height="200" />

* N'oubliez pas de mettre les cables entre les moteurs pendant la construction du robot ! Tous les moteurs sauf le dernier ont deux cables pour les connecter aux moteurs d'avant (ou Raspberry) et d'apres (le coté de branchement n'as pas d'influence tant qu'ils sont correctement branchés en série).

* **Alignez toujours le palonnier (la roue d'entrainement noire) avec le moteur avant de les assembler !** Sinon votre robot risque de ne pas bouger comme vous le souhaitez puisqu'il sera décalé au démarrage.

<img src="img/assembly/align-horn.jpg" alt="Aligner les palonniers" height="200" />

## Guide pas à pas

### Configuration des moteurs (pour toutes les étapes)

Vous pouvez configurer les moteurs avant, pendant ou apres l'assemblage. **Il est néanmoins plus facile de les configurer un par un dans l'ordre de montage**: * configurer le moteur m1 * assembler le moteur à la base * configurer le moteur m2 * ...

> **Attention** Pour configurer les moteurs, vous devez les connecter séparément un par un à la Raspberry Pi. Si vous essayez de configurer un nouveau moteur alors qu'il est connecté avec le moteur précédent, cela ne fonctionnera pas.

Pour plus d’informations, consultez la [section configuration de moteur](motor-configuration.md).

### Étape 1 - moteur 1 et 2

Tout d’abord montez le plot avant avc 4 petits rivets, puis [configurez un moteur XL-320](motor-configuration.md) comme « m1 », il sera relié à la raspberry, et un autre comme « m2 ». Ces deux moteurs seront les roues du Dragster. Fixez les roues sur ces moteurs avec 4 petits rivets pour chaque roue. Vérifiez que les paloniers sont bien alignés.

Montez les moteurs sur la base imprimée en 3D en les fixant avec des rivets.

![étape 1](img/assembly/steps/Etape1.png)


### Étape 2 - moteur 3 et camera

Placez la camera dans son encoche et branchez la à la Raspberry.
Configurez le second moteur, son nom est « m3 », avec la commande suivante dans un terminal du robot :

```bash
poppy-configure ergo-jr m3
```
Vérifiez que le palonier est bien aligné.
Branchez les cables de m2 vers m3 et de m3 vers m4 que vous monterez juste apres, puis fixez le avec 4 petits rivets de chaque coté (la partie circulaire du coté de la caméra)
Une fois fixé, montez la partie *long_U* sur la partie circulaire du moteur.

![étape 2](img/assembly/steps/Etape2.png)

### Étape 3 - moteur 4 et 5

Configurez les moteurs « m4 » et « m5 ». Vérifiez que les paloniers sont bien alignés.
Montez les pièces deux pièces *4dofs-side2side.stl* sur les moteur avec 16 rivets, puis fixez m4 sur la partie *long_U* avec 1 rivet gris à fixer du coté non mobile. 4 petits rivets sont à fixer sur la partie circulaire de l'autre coté du *long_U*.

![étape 3](img/assembly/steps/Etape3.png)

### Étape 4 - moteur 6

Configurez le sixième (et dernier!) moteur : « m6 ».

Montez les pièces deux pièces *4dofs-horn2horn-5holes.stl* sur le moteur m6 avec 4 rivets d'un coté (sur la partie circulaire) et un de l'autre coté.
Fixez par le meme procédé, le moteur m5 à l'autre bout de la pièce *4dofs-horn2horn-5holes.stl*
Vous pouvez ensuite ajouter un embout de votre choix.



> **Note** Les les embouts sont des outils qui peuvent être facilement et rapidement changés, ce qui vous permet d'adapter votre robot aux différentes activités.
Retrouvez quelques activités avec le Poppy Ergo Jr :

#### L'abat-jour ou le stylo

Montez les pièces *horn2horn* et *horn2side* sur moteur « m5 » et monter « m6 » sur le sommet de la construction. ![étape 6](img/assembly/steps/Etape4.png)

Vous pouvez monter le support de stylo ou de l’abat jour sur le moteur « m6 ». ![bis de l’étape 6](img/assembly/steps/step_18-19.jpg)

A la meme manière de l'abat-jour, il est possible de monter le porte-stylo. <img src="img/assembly/steps/pen_holder.jpg" alt="step 6 pen" height="300" />

#### La pince

Montez le [*gripper-fixation*](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixation.stl) entre les moteurs "m5" et "m6".

Montez *gripper-fixed_part* et *gripper-rotative_part* sur "m6".

Il y a deux manières de monter la pince : verticalement ![step gripper](img/assembly/steps/grip1.jpg)

Ou horizontalement ![step gripper](img/assembly/steps/grip2.jpg)

### Étape 5 - vérification électronique

Si vous n'avez pas fixé votre camera à votre Raspberry lors de l'étape 2 ou vos cables lors de la construction du robot, faites le maintenant.

**Fixer la camera**

Pour fixer la camera sur la Raspberry Pi avec le cable flex (bande de cable) ouvrez le connecteur de la camera situé sur la Raspberry en tirant legerement l'encoche vers le haut. Assurez vous que les connecteurs sont en face du port Ethernet. Repoussez l'encoche vers le bas pour coincer le cable flex.
[step 7](img/assembly/steps/camera.jpg)

**Cables reliant les moteurs**

Si ce n'est pas fait, connectez tous les moteurs entre eux. Chaque moteur a deux connecteurs pour etre relié au suivant et au précédent.

> **Info** Les connecteurs des moteurs peuvent etre un peu difficiles à brancher, vous pouvez utiliser l’outil OLLO pour vous aider. 

### Étape 6 - branchez et testez votre Robot

![Dragster](img/dragsterfinal.png)
Bravo !!!  si votre robot ressemble à ceci, vous avez fini l'assemblage ! Vous pouvez maintenant le brancher, pour cela branchez le cables d'alimentation à la carte Pixl et le cable ethernet à la Raspberry.

![branchements](img/cables.png)

Lorsque vous le branchez, tous les moteurs sont sensés s'allumer. Si ce n'est pas le cas, vérifiez que vous les avez bien tous branchés les uns aux autres.

VOus pouvez maintenant aller sur <http://poppy.local> (c'est la page d'acceuil de votre robot)

Cliquez sur *Reboot the robot* pour redémarrer les moteurs <img src="img/IHM/home_page_reboot.png" alt="test installation" height="250" />

Ensuite, cliquez sur *Monitor and Control* pour avoir des informations sur votre robot et vérifier qu'il fonctionne correctement <img src="img/IHM/home_page_monitor.png" alt="test installation" height="250" />

Si c'est le cas, vous devriez voir le petit logo de chaine verte (au milieu en haut). Vous pouvez alors choisir parmi les actions prédéfinies.
<img src="img/IHM/monitor_full.png" alt="test installation" />

Si au lieu du logo de connection vert, vous voyez apparaitre à la place **le logo "chaine cassée" rouge** c'est qu'il y a un probleme de configuration. Vous pouvez aller voir dans *What append?* pour avoir plus d'informations. La plupart du temps c'est qu'un cable est débranché ou qu'un moteur n'est pas configuré. <img src="img/IHM/home_page_logs.png" alt="test installation" height="250" />


### Explorer

Explorez les activités avec votre robot ou avec un autre robot comme Ergo Jr par exemple.
Vous pouvez aussi imaginer votre propre robot, quelle forme aurait il ? combien de moteurs ? des roues, des pattes ? en forme de machine, d'animal ? A quoi servirait il et quels seraient ses mouvements ? Laissez vous guider par votre imagination :)
![image](img/assembly/ergo-tool-2.jpg)