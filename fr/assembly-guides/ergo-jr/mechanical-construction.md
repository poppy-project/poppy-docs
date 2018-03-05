# Assemblage mécanique

## Avis et avertissements d'ordre général

* You can assemble all the rivets you need before the construction. The **orientation is important**, you have to put the edges of the first part in the second part holes. You will thus be able to remove them easily if needed.

![Assemblage des rivets OLLO](img/assembly/ollo_rivet.png)

* There are two kinds of rivets. The grey ones and the others. Grey rivets are longer to be able to be inserted in the motor axis, at the opposite side of the horn (black revolving circle).

<img src="img/assembly/ollo_rivets_size.jpg" alt="Taille des rivets OLLO" height="200" />

* Utilisez l'outil OLLO pour pouvoir monter et démonter les rivets facilement.

<img src="img/assembly/ollo-tool.jpg" alt="Outil OLLO" height="200" />

* Do not forget to put wires between motors while building the robot! Each motor, except the last, must have two wires; one connected to the previous motor and the other to the next (there is no importance on the connector choice).

* **Alignez toujours le palonnier (la roue d'entrainement noire) avec le moteur avant de les assembler !** Sinon votre Poppy Ergo Jr aura l'air tout à fait bizarre.

<img src="img/assembly/align-horn.jpg" alt="Aligner les palonniers" height="200" />

* Tous les palonniers des moteurs (la roue d'entrainement noire) doivent être alignés **sur le côté gauche du robot**. C'est juste une convention mais elle définira l'orientation de vos moteurs.

![Pallonniers sur le côté gauche](img/assembly/horns_on_left.jpg)

## Guide pas à pas

### Configuration des moteurs (pour toutes les étapes)

You can configure your motors before, during or after the the mechanical assembly but **it is highly advised to configure each motor one by one in the construction order**: * configure motor m1 * assemble the base and motor m1 * configure motor m2 * ...

> **Attention** Pour configurer les moteurs, vous devez les connecter séparément un par un à la Raspberry Pi. Si vous essayez de configurer un nouveau moteur alors qu'il est connecté avec le moteur précédent, cela ne fonctionnera pas.

Pour plus d’informations, consultez la [section configuration de moteur](motor-configuration.md).

### Step 1 - motor 1

Tout d’abord, [configurez un moteur XL-320](motor-configuration.md) comme « m1 ».

Monter le moteur sur la base imprimée en 3D.

![étape 1](img/assembly/steps/step_1-2.jpg)

Pour cela, préparez 8 petits rivets. Placez la première partie dans la seconde sans les mettre à l'intérieur du moteur. Ensuite, placez le moteur sur la base avec la palonnier faisant face au côté le plus ouvert. Utilisez l'outil Ollo pour attraper le rivet entre la première et seconde partie puis insérez le rivet dans un des trous d'assemblage. Une fois le rivet en place, verrouillez-le en poussant la première partie du rivet dans la seconde.

### Step 2 - motor 2

Configurez le second moteur, son nom est « m2 », avec la commande suivante dans un terminal du robot :

```bash
poppy-configure ergo-jr m2
```

Monter la partie *long_U*. Soyez prudent avec l’orientation de la la pièce, le palonnier doit être orienté vers la gauche. Monter le moteur « m2 » sur le dessus de la construction.

![étape 2](img/assembly/steps/step_3-4.jpg)

### Step 3 - motor 3

Configurer un troisième moteur : « m3 ».

Monter les pièces *horn2horn* et *horn2side* sur moteur « m2 » et monter « m3 » sur le dessus de la construction. ![étape 3](img/assembly/steps/step_5-6.jpg)

### Step 4 - motor 4

Configurer le quatrième moteur : « m4 ».

Monter la pièce *short_U* sur le moteur 4. ![étape 4](img/assembly/steps/step_7-8.jpg)

Monter le moteur « m4 » et la pièce *short_U* préalablement assemblée au sommet de la construction. Le nez du moteur doit être orienté vers l'arrière de la base. ![étape 4 bis](img/assembly/steps/step_9-10.jpg)

### Step 5 - motor 5

Configurer le cinquième moteur : « m5 ».

Monter les pièces *horn2horn* et *horn2side* sur moteur « m4 » et monter « m5 » sur le dessus de la construction.

![étape 5](img/assembly/steps/step_11-12-13.jpg)

### Étape 6 - l’outil de votre choix

Configurer le sixième moteur : « m6 ».

Pour terminer votre Ergo Jr, vous devez ajouter un outil à son extrémité. Choisissez un outil en fonction de ce que vous souhaitez faire.

> **Note** Les outils peuvent être facilement et rapidement changés, ce qui vous permet d'adapter votre robot aux différentes activités.

#### L'abat-jour ou le stylo

Monter les pièces *horn2horn* et *horn2side* sur moteur « m5 » et monter « m6 » sur le sommet de la construction. ![étape 6](img/assembly/steps/step_14-16-17.jpg)

Vous pouvez monter le support de stylo ou de l’abat jour sur le moteur « m6 ». ![bis de l’étape 6](img/assembly/steps/step_18-19.jpg)

In the same way you mount the lampshade, you can also mount the pen holder. <img src="img/assembly/steps/pen_holder.jpg" alt="step 6 pen" height="300" />

#### La pince

Mount the [*gripper-fixation*](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixation.stl) between motors "m5" and "m6".

Mount *gripper-fixed_part* and *gripper-rotative_part* on motor "m6".

There is two way to mount the gripper, vertically ![step gripper](img/assembly/steps/grip1.jpg)

Or Horizontally ![step gripper](img/assembly/steps/grip2.jpg)

### Étape 7 - électronique

Mount the support_camera part on the base. Fix the Raspberry Pi camera on it and move the camera flex cable between motor "m1" and the base. ![step 7](img/assembly/steps/step_21-22.jpg)

**Camera flex wire**

To fix the flex cable of the camera on the Raspberry Pi: * open the camera connector by pulling on the tab to the top * make sure that connectors on the flex cable are facing away of the Ethernet port * push the flex on the port, and push the plastic tab down to close it ![step 7](img/assembly/steps/camera.jpg)

**Motors wires:**

If it is not already done, you can plug every motors wires. Every motor has two connectors but there is no input or output: you just have to create a chain of motors. The first motor is linked to the pixl and the second motor; the last motor is linked only to the previous one, and every other motors are linked to the one above and ahead.

> **Info** Les connecteurs du moteur « m1 » (à la base) sont un peu difficiles à brancher, vous pouvez utiliser l’outil OLLO pour vous aider.

![step 7 bis](img/assembly/steps/step_24.jpg)

### Étape 8 - fixer votre Ergo Jr sur le disque de support en bois

Mount your Ergo Jr to the wood *disk-support*.

Mount the Raspberry Pi to the disk support, and use 4 x M2.5x6mm screw to fix it. <!-- TODO: picture of disk fixation -->

### Step 9 - test your Robot !

Congratulation, you achieve the robot assembly! Now, it is almost done, it is time to test it!

Go to your robot home page <http://poppy.local>.

Click on *Reboot the robot* button to be sure that the robot software was started with all motors wired in. <img src="img/IHM/home_page_reboot.png" alt="test installation" height="250" />

You can go to the monitor, click on *Monitor and Control* button. <img src="img/IHM/home_page_monitor.png" alt="test installation" height="250" />

If the robot software is correctly started, you should see the green connection logo, otherwise it will be red. <img src="img/IHM/monitor_full.png" alt="test installation" />

You can start a pre-defined behavior by clicking on the play logo.

**If the connection logo is red**, you can see what is wrong by looking on messages in *What append?* page. <img src="img/IHM/home_page_logs.png" alt="test installation" height="250" />

Most of the time, it's because a wire is unplugged or because you forgot to configure a motor.

### Done

![image](img/assembly/ergo-tool-2.jpg)

Grab your [favorite drink](https://www.flickr.com/photos/poppy-project/16488256337/) and relax.