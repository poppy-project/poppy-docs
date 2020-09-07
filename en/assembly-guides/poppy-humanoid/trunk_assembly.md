# 6. Poppy Humanoid: Torso assembly
## 6.1. Chest
### Bill of Material for the Chest

3D printed parts: Chest
<img src="img/chest_bom_1.jpg" title="Chest parts" style="width: 350px;" />

Actuators:
* 1x Robotis Dynamixel AX12-A 
<img src="img/chest_bom_2.jpg" title="AX12-A" style="width: 350px;" />
* 2x Robotis Dynamixel MX28-AT
<img src="img/chest_bom_3.jpg" title="MX28-AT" style="width: 350px;" />

Cables:
* 1x 3P 100mm
* 2x 3P 140mm

Robotis parts :
* 10x Nuts M2
* 10x Bolts M2
* 16x Bolts M2.5
* 2x HN07-N101
* 1x Bioloid 3P PCB HUB
<img src="img/chest_bom_4.jpg" title="3P PCB hub" style="width: 250px;" />

### Chest videos
* [Chest assembly](https://www.youtube.com/watch?v=qwrgV6tKTO8&list=PL8wg9_Kkof8wwqgfFu0iCij73C-4gt95x&index=12)

### Chest assembly instructions

Prepare and configure these motors, all with active horns (HN07-N101 for MX-28AT), without free horns.

| Sub-assembly name |   Motor name   |   Type  | ID |  Free horn |
|-------------------|:--------------:|:-------:|:--:|:----------:|
| Chest             |     head\_z    |  AX-12A | 36 | No         |
| Chest             | l\_shoulder\_y | MX-28AT | 41 | No         |
| Chest             | r\_shoulder\_y | MX-28AT | 51 | No         |

Insert the 10 M2 nuts all around the bottom part of the AX12-A.

Lay the AX12-A on the top of the chest, then screw it with the 10 Bolts M2 and plug the 100m cable on the AX12-A, and fix it by passing it in the gap. 

<img src="img/chest_1.jpg" title="Top view of the AX-12 in chest" style="width: 350px;" />
<img src="img/chest_2.jpg" title="Bottom view of the AX-12 in chest with screws" style="width: 350px;" />

Plug a 140mm cables between r_shoulder_y and l_shoulder_y. Insert them in their slots in the chest and fix them both with 8 Bolts M2.5.

<img src="img/chest_3.jpg" title="Right view of the r_shoulder_y slided into its slot" style="width: 350px;" />

Pass both the 140mm cable in the gap on each side of the chest.

<img src="img/chest_4.jpg" title="Cable passing in the chest" style="width: 350px;" />

Plug the 3 cables on the 3P Extension PCB, with hot glue, fix it behind the chest on top of the Poppy logo.

<img src="img/chest_bom_4.jpg" title="Glue the 3P PCB hub behind the robot" style="width: 250px;" />

## 6.2. Double Dynamixel MX-28 sub-assembly
### Bill of Material for the Double MX-28 sub-assembly

3D printed parts: 
* 1x i101-Set_to_MX28_link
<img src="img/2mx28_bom_1.jpg" title="Set_to_MX28_link" style="width: 350px;" />
* 2x double_rotation_MX28_link
<img src="img/2mx28_bom_2.jpg" title="double_rotation_MX28_link" style="width: 350px;" />

Actuators:
* 2x Robotis Dynamixel MX28-AT

Cables:
* 1x 3P 60mm

Robotis parts :
* 8x Nuts M2.5
* 8x Bolts M2.5
* 2x HN07-N101
* 2x HN07-I101

### Double MX-28 sub-assembly videos
* [Double MX-28 assembly](https://www.youtube.com/watch?v=9oNGV9ggHaE&list=PL8wg9_Kkof8wwqgfFu0iCij73C-4gt95x&index=10)

### Double MX-28 sub-assembly instructions

Prepare and configure these 2 motors, both with active horns (HN07-N101). Only one requires its free horn (HN07-I101) but an additional free horn is needed during the sub-assembly.

<img src="img/2mx28_1.jpg" title="Only bust_y requires a free horn now" style="width: 250px;" />

The additional free horn will be mounted to its motor later on.

| Sub-assembly name |   Motor name   |   Type  | ID |  Free horn |
|-------------------|:--------------:|:-------:|:--:|:----------:|
| Double MX28       |     bust\_y    | MX-28AT | 34 | Yes        |
| Double MX28       |     bust\_x    | MX-28AT | 35 | No         |

Insert a 2.5 nut on the back of the i101-Set_to_MX28_link, and install the second free horn HN07-I101 on it with a central screw.

<img src="img/2mx28_2.jpg" title="The second free horn goes on top on the i101-Set_to_MX28_link 3D printed part" style="width: 250px;" />

On both double_rotation_MX28_link parts, insert 2 M2.5 nuts.

<img src="img/2mx28_3.jpg" title="Insertion of nuts in double_rotation_MX28_link" style="width: 350px;" />
<img src="img/2mx28_4.jpg" title="Insertion of nuts in double_rotation_MX28_link" style="width: 350px;" />

Install them on the bust_x motor.

<img src="img/2mx28_5.jpg" title="bust_x with double_rotation_MX28_link" style="width: 350px;" />
<img src="img/2mx28_6.jpg" title="Bust_x with double_rotation_MX28_link" style="width: 350px;" />

Connect both motors together with the short 60mm cable. Insert 2 M2.5 nuts on bust_y on the same side of the cable.

<img src="img/2mx28_7.jpg" title="Nuts to be inserted into bust_y" style="width: 350px;" />

Approach both motors so that their axes form a 90° angle, and fix them by the means of the double_rotation_MX28_link and 4 M2.5 bolts.

<img src="img/2mx28_8.jpg" title="MX-28 sub-assembly fixed with double_rotation_MX28_link" style="width: 350px;" />

<!-- From there, Torso differs from the Humanoid -->
<!-- Spine sub-assembly and Spine assembly have been merged here -->
## 6.3. Spine sub-assembly
### Bill of Material for the Spine

3D printed parts:
* Spine
Actuators :
* 1x Robotis Dynamixel MX28-AT

Cables :
* 2x 3P 200mm

Robotis parts :
* 4x Nuts M2.5
* 8x Bolts M2.5
* 1x HN07-N101
* 40x Bolts M2x3
* 4x Bolts M2.5x4

### Spine sub-assembly instructions
Prepare and configure this motor with its active horn:

| Sub-assembly name |   Motor name   |   Type  | ID |  Free horn |
|-------------------|:--------------:|:-------:|:--:|:----------:|
| Spine             |     abs\_z     | MX-28AT | 33 | No         |

Insert 4 nuts in the top face of abs_z.

<img src="img/spine_1.jpg" title="Nuts of abs_z" style="width: 250px;" />

Plug it to a 200mm cable and slide the motor into its slot in the spine. Fix it with the 8 M2.5 Bolts.

<img src="img/spine_2.jpg" title="Slide abs_z into its slot" style="width: 350px;" />

Link the double MX-28 sub-assembly to the spine with 16 M2 Bolts and pass the 200mm cable between the 2 parts. Connect the motors.

<img src="img/spine_3.jpg" title="Left view of the spine" style="width: 350px;" />
<img src="img/spine_4.jpg" title="Right view of the spine" style="width: 350px;" />

Put two M2.5 nuts on bust_x motor and fix the i101-Set_to_MX28_link at the same location with 4 M2.5 Bolts.

<img src="img/spine_5.jpg" title="Rear view of the spine with its i101-Set_to_MX28_link" style="width: 350px;" />

Assemble the the chest with the double rotation MX28 with 16 Bolts M2. Be careful of the part orientations: poppy logo faces front ; spine curvature faces rear.

<img src="img/spine_6.jpg" title="Front view of the spine assembled with the chest" style="width: 350px;" />
<img src="img/spine_7.jpg" title="Rear view of the spine assembled with the chest" style="width: 350px;" />

Plug bust_x to the 3P PCB HUB with the 200mm cable, and glue the hub with hot glue right above the chest axis.

<img src="img/spine_8.jpg" title="Rear view of the spine assembled with the chest (hub not glued)" style="width: 350px;" />

### Spine sub-assembly videos
* [Spine sub-assembly](https://www.youtube.com/watch?v=LXktU4MTITE&list=PL8wg9_Kkof8wwqgfFu0iCij73C-4gt95x&index=11)
* The video of the insertion of the double MX28 sub-assembly is included to the *Full trunk assembly* here under

## 6.4. Double MX-64 sub-assembly
### Bill of Material for the Double MX-64 sub-assembly

3D Printed parts:
* 1x i101-Set_to_MX64_link
* 2x double_rotation_MX64_link

Actuators:
 * 2x Robotis Dynamixel MX64-AT

Cables:
*  1x 3P 100mm

Robotis parts:
* 2x HN05-N102
* 2x HN05-I101
* 13x Nuts M2.5
* 12x Bolts M2.5x6
* 1x Bolts M2.5x8

### Double MX-64 sub-assembly instructions

Prepare and configure these 2 motors, both with active horns (HN05-N102). Only one requires its free horn HN05-I101 but an additional free horn is needed during the sub-assembly.

| Sub-assembly name |   Motor name   |   Type  | ID |  Free horn |
|-------------------|:--------------:|:-------:|:--:|:----------:|
| Double MX64       |     abs\_y     | MX-64AT | 31 |    Yes     |
| Double MX64       |     abs\_x     | MX-64AT | 32 |            |

Detailed textual instructions are missing, please follow the videos.

### Double MX-64 sub-assembly videos
* [Double MX-64 assembly](https://www.youtube.com/watch?v=83lrhXVNHYE&list=PL8wg9_Kkof8wwqgfFu0iCij73C-4gt95x&index=9)

## 6.5. Full trunk 
<!-- For the torso here it's just the table support -->

Fix the abdomen part to the abs_z motor.

Insert the double MX-64 sub-assembly inside the abdomen ; be careful about the orientation: abs_y faces front while abs_x faces rear ; and abs_z is slightly closer to the front than the rear.

<img src="img/trunk_1.jpg" title="Full trunk assembly" style="width: 250px;" />

Fix the SMPS2Dynamixel with hot glue at the rear of the robot.

<img src="img/trunk_2.jpg" title="Full trunk assembly" style="width: 250px;" />

### Full trunk assembly videos
* [Full trunk assembly](https://www.youtube.com/watch?v=LEHLdoBEr4Q&list=PL8wg9_Kkof8wwqgfFu0iCij73C-4gt95x&index=13) (includes the double MX-32 insertion)

## 6.6. Final torso (full trunk with arms)
### Bill of Material for the Final Torso
Sub-assemblies:
* Full trunk
* Left arm
* Right arm

3D printed parts:
* Left shoulder
<img src="img/torso_bom_1.jpg" title="Left shoulder" style="width: 250px;" />
* Right shoulder
<img src="img/torso_bom_2.jpg" title="Right shoulder" style="width: 250px;" />


Cables:
* 2x 3P 200mm
* 1x 3P 60mm

Robotis parts:
* 48x Bolts M2x3
* SMPS2Dynamixel


### Final torso videos
* [Final torso assembly](https://www.youtube.com/watch?v=uDhLIS3vxM4&list=PL8wg9_Kkof8wwqgfFu0iCij73C-4gt95x&index=14)

### Final torso instructions

Plug the SMPS2Dynamixel on the last pin of the 3P PCB HUB with the 60mm wire.
Fix the shoulders on their side with 16 M2x3 bolts.
Fix the right arm on the right shoulder with 32 M2x3 bolts. Repeat on the other side

> **Note** **IMPORTANT**: When you assemble the arm, it must be perpendicular to the body, so that the 3 dots match as usual

<img src="img/torso_1.jpg" title="Rear view of the arm connection to the chest" style="width: 350px;" />


[**Next: 7. Legs assembly >>**](legs_assembly.md)

[**<< Back to menu**](README.md)

