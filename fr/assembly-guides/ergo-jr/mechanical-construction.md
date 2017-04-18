# Assemblage mécanique

## Avis et avertissements d'ordre général

<!-- TODO:
* picture rivet black vs grey
* ergo + wires
-->

* Vous pouvez assembler quelques rivets avant la construction. Vous devez insérer la tige de la première partie dans le trou de la seconde. Vous pourrez ainsi les enlever facilement si nécessaire.

![OLLO Rivet Assembly](img/assembly/ollo_rivet.png)

* Il y a deux types de rivets : les gris et les autres. Les rivets gris sont plus longs afin de pouvoir les insérer à travers l'axe du moteur, par le côté opposé aux palonniers d'assemblage.

<!-- HTML link to adapt image size -->

<img src="img/assembly/ollo_rivets_size.jpg" alt="OLLO Rivet size" height="200" />

* Utilisez l'outil OLLO pour pouvoir monter et démonter les rivets facilement.

<!-- HTML link to adapt image size -->

<img src="img/assembly/ollo-tool.jpg" alt="OLLO Tool" height="200" />

* N'oubliez pas d'insérer les fils entre les moteurs quand vous construisez le robot ! Chaque moteur, mis à part le dernier de la chaîne, doit avoir deux fils : un connecté au moteur précédent et l'autre au moteur suivant (le sens de connexion n'a pas d'importance).

* **Alignez toujours le palonnier (la roue d'entrainement noire) avec le moteur avant de les assembler !** Sinon votre Poppy Ergo Jr aura l'air tout à fait bizarre.

<!-- HTML link to adapt image size -->

<img src="img/assembly/align-horn.png" alt="Align Horn" height="200" />

* Toutes les palonniers moteur (la roue d'entrainement noire) doivent être alignées **sur le côté gauche du robot**. C'est juste une convention mais elle définira l'orientation de vos moteurs.

![Horns on left side](img/assembly/horns_on_left.jpg)

## Step-By-Step guide

### Configuration des moteur (pour toutes les étapes)

Vous pouvez configurer vos moteurs avant, pendant ou après le l’assemblage mécanique, mais il est vivement conseillé de configurer chaque moteur un par un dans l’ordre de construction : * configurer le moteur m1 * assembler la base et le moteur m1 * configurer le moteur m2 * etc

> **Attention** Pour configurer les moteurs, vous devez connecter séparément un par un à la Raspberry Pi. Si vous essayez de configurer un nouveau moteur alors qu'il est connecté avec le moteur précédent, cela ne fonctionnera pas.

Pour plus d’informations, consultez la [section configuration de moteur](motor-configuration.md).

### Step 1

First, [configure one XL-320](motor-configuration.md) motor as "m1".

Mount the motor on the 3D printed base.

![step 1](img/assembly/steps/step_1-2.jpg)

To do so, prepare 8 small rivets. put the first part in the second part without putting them in the motor. Then, place the motor in the base, with the horn facing up and near the more open side. Use the Ollo to grab a rivet between the first and the second part, then put the rivet in one the assembly holes. Once the rivet is in place, lock it by pushing the part 1 of the rivet in part 2.

### Step 2

Configure the second motor, its name is "m2", with the following command in a poppy terminal:

```bash
poppy-configure ergo-jr m2
```

Mount the *long_U* part. Be careful wih the orientation of the U, the horn must be oriented in the left. Mount the motor "m2" on top of the construction.

![step 2](img/assembly/steps/step_3-4.jpg)

### Step 3

Configure a third motor: "m3".

Mount *horn2horn* and *horn2side* parts on motor "m2", and mount "m3" on top of the construction. ![step 3](img/assembly/steps/step_5-6.jpg)

### Step 4

Configure the fourth motor: "m4".

Mount the *short_U* on it. ![step 4](img/assembly/steps/step_7-8.jpg)

Mount motor "m4" and the assembled *short_U* on top of the previous assembly. The nose of the motor should be on the other side of the base. ![step 4 bis](img/assembly/steps/step_9-10.jpg)

### Step 5

Configure the fifth motor: "m5".

Mount *horn2horn* and *horn2side* parts on motor "m4", and mount "m5" on top of the construction.

![step 5](img/assembly/steps/step_11-12-13.jpg)

### Step 6 - the tool of your choice

Configure the sixth motor: "m6".

To finish your Ergo Jr, you need to add a tool at its end. So first choose the tool you want depending on what you want to do.

> **Note** Tools they can be easily and quickly changed, so you can adapt it to the different activities.

#### Lampshade or pen holder

Mount *horn2horn* and *horn2side* parts on motor "m5", and mount "m6" on top of the construction. ![step 6](img/assembly/steps/step_14-16-17.jpg)

You can mount the pen holder or the lampshade on the motor "m6". ![step 6 bis](img/assembly/steps/step_18-19.jpg)

#### Gripper

Mount the [*gripper-fixation*](https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/STL/tools/gripper-fixation.stl) between motors "m5" and "m6".

Mount *gripper-fixed_part* and *gripper-rotative_part* on motor "m6". <!-- TODO closed picture of gripper-->

### Step 7 - electronics

Mount the support_camera part on the base. Fix the Raspberry Pi camera on it and move the camera flex cable between motor "m1" and the base. ![step 7](img/assembly/steps/step_21-22.jpg)

To fix the flex cable of the camera on the Raspberry Pi: * open the camera connector by pulling on the tab * make sure that connectors on the flex cable are facing away of the ethernet port * push the flex on the port, and push the plastic tab down

<!-- TODO: add a closed picture of camera fix-->

**Motors wires:**

If it is not already done, you can plug every motors wires. Every motor has two connectors but there is no input or output: you just have to create a chain of motors. The first motor is linked to the pixl and the second motor; the last motor is linked only to the previous one, and every other motors are linked to the one above and ahead.

<!-- TODO picture of OLLO + base rivets -->

> **Info** Connectors of the motor "m1" (in the base) are a bit hard to link, you can use the OLLO tool to help yourself.

![step 7 bis](img/assembly/steps/step_24.jpg)

### Step 8 - fix you ergo-jr to wood disk support

Mount you ergo-jr to the wood *disk-support*.

Mount the Raspberry Pi to the disk support, and use 4 x M2.5x6mm screw to fix it. <!-- TODO: picture of disk fixation -->

### Done

![image](img/assembly/ergo-tool-2.jpg)

Grab your [favourite drink](https://www.flickr.com/photos/poppy-project/16488256337/) and relax.