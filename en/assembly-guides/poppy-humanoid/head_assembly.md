# 8. Poppy Humanoid: Head Assembly

This page will guide you through the process of assembling the head of your Poppy.

**Note:** sorry, no video or images available for the head

## 8.1. Insert hex nuts in the head face

Prepare the *head_face* part for assembly by putting all hex nuts in 
You may have to use a small screwdriver or a pliers to help you *clip* nuts inside holes.

## 8.2. Insert the screen

Your kit is either equipped with a screen *manga screen* or a *3D printed fake screen*.
To fix it, use 2x M2.5x6mm bolts.

## 8.3. Fix the camera
First you have to put 3x hex nut M2 in the hex holes of the *camera_support* part:
![](img/assembly/camera_support_nuts.jpg)

Then you can assemble the *support_camera* part on the *head_face* with 2x **M2x4mm bolt (/!\ if you use longer bolt it may go through the head and create holes on the front side...)**:

![](img/assembly/head_face_camera_support_parts.jpg)

With 3 M2x5 screws, you can fix the camera on the *support_camera* part:
![](img/assembly/head_face_camera_parts.jpg)

![](img/assembly/head_face_assembled_camera_back.jpg)

And you got your Poppy with the camera !
![](img/assembly/head_face_assembled_camera_front.jpg)


## 8.4: Add the speakers (if relevant)
If you have speakers in your kit, there are two different 3D parts, one for the right side and one for the left side. Don't worry, it's written on each part. Use 2x M2x5mm screws to fix each speaker.


## 8.5: Assemble the motor with the head_back
Take 6 M2 hex nuts and put them on the Dynamixel AX-12. Then you need 6 M2x5 screws to fix the motor with the head. Beware of putting the AX-12 in the correct position.


## 8.7: assemble the head with the body

* Take the body and the head of your Poppy.

* Put the head motor on the neck (U shape part), align the mark of the motor to ensure the initial position is correct.

* Use 4x M2x5 screws to assemble the motor with the neck (use threadlock):

* Turn the neck and fix the other side with the big Robotis screw M3 (use threadlock).

* Close the head gently and take care all wires fit inside.

* Use 3 long M2 screw to assemble the back and the face together:

* There are 3 holes, one on each side and one on the top.

## 8.8: Do not close the head before full startup
As you might expect, the last part is to add the head_face in order to close the head. However, since the first startup may require debugging, we advise you to keep the head open till you are guaranteed your robot is assembled the right way.

## Older head versions with Odroid
Former versions of Poppy Humanoid were shipped with Odroid U3 or Odroid U4 boards.
These boards are no longer supported. If you have such boards, please refer to the archieved documentation [for U3](https://github.com/poppy-project/Poppy-minimal-head-design/blob/odroid-xu4-integration/doc/head_back_U3.md#u3-version-assembly) or [for XU4](https://github.com/poppy-project/Poppy-minimal-head-design/blob/odroid-xu4-integration/doc/head_back_xu4.md).

[**Next: 9. First startup >>**](wiring_arrangement.md)
[**<< Back to menu**](README.md)
