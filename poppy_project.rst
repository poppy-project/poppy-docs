The Poppy project
================


.. image:: images/poppy_name_h144.png
    :width: 20%
    :align: center

`Poppy <https://www.poppy-project.org/>`_ is an open-source platform for the creation, use and sharing of interactive 3D printed robots. It gathers an interdisciplinary community of beginners and experts, scientists, educators, developers and artists, that all share a vision: robots are powerful tools to learn and be creative.

The `Poppy community <https://forum.poppy-project.org/>`_  develops robotic creations that are easy to build, customise, deploy, and share. We promote open-source by sharing hardware, software, and web tools.

The Poppy project has been originally released by the `INRIA Flowers <http://www.inria.fr/equipes/flowers/>`_.

|

It consist of several parts:

- Pypot, a Python library allowing to control Dynamixel servomotors in an easy way

- Poppy Humanoid, a 25-degree of freedom humanoid robot with a fully actuated torso. Used for education (high school, university), research (walk, human-robot interactions) or art (dance, performances).

- Poppy Torso, upper part of Poppy Humanoid (13 degrees of freedom). Mainly designed for school usage.

- Poppy Ergo Jr, a cheaper 6-degree-of-freedom arm for art and robot discovery.

All these parts are open-source and available to download and modify. 

The Poppy project also consist in a very active and diverse :ref:`community <contribute>`. People of different horizons collaborate to improve the project, but adding features to the core libraries, releasing advanced behaviors, pedagogical content or even new robots.

Poppy Humanoid
------------------------------------

.. image:: images/poppy_humanoid_logo.png
    :width: 20%
    :align: center

Poppy Humanoid is an open-source humanoid platform based on 3D printing.

It consists of open-source hardware models (CC-BY-SA), an open-source software library named :ref:`Pypot <pypot_about>` (in Python, with a :ref:`REST API <remote_protocol>`). 
A simulator is also available (based on :ref:`vrep <quickstart_vrep>`), as well as a visual programming language (:ref:`Snap! <quickstart_snap>`, a variation of Scratch).
It can be used as it is, or hacked to explore the shape of novel legs, arms or hands.

From a single arm to the complete humanoid, this platform is actively used in labs, engineering schools, FabLabs, and artistic projects. 

.. image:: images/poppy-le-robot-de-face.jpg
    :width: 20%
    :align: center

Get a Poppy Humanoid robot
+++++++++++++++++++

You can get a full Poppy Humanoid robot from one of Poppy's official resellers:

- `Génération Robots <http://www.generationrobots.com/en/402077-poppy-humanoid-kit-with-3d-printed-parts.html/>`_

Or you can get all the parts yourself following the `Bill of Material <https://github.com/poppy-project/poppy-humanoid/blob/master/hardware/doc/BOM.md/>`_. 
The 3D models for the parts can be found `here <https://github.com/poppy-project/poppy-humanoid/releases/tag/hardware_1.0.1/>`_.

Get started with Poppy Humanoid
++++++++++++++++++++++++++

After :ref:`assembling your robot <poppy_humanoid_assembly_doc>`, try the :ref:`discover quickstart <quickstart_discover>`, then have a look at the :ref:`poppy_humanoid library <poppy_humanoid_lib>`



Poppy Torso
-----------------------------

Poppy Torso is a variation of the Poppy Humanoid robot creature: it is an open-source humanoid robot torso which can be installed easily on tabletops. Poppy Torso is more affordable than the full kit (Poppy Humanoid), which makes it especially suitable for uses in an educational, associative and makers context. Poppy Torso is an ideal medium to learn science, technology, engineering and mathematics (STEM).

Like Poppy Humanoid, Poppy Torso is an open-source robot (both hardware and software), using 3D printed parts and Dynamixel servomotors, known for their reliability.

.. image:: images/robot-poppy-torso.jpg
    :width: 20%
    :align: center


Get a Poppy Torso
+++++++++++++++


You can get a full Poppy Torso from one of Poppy's official resellers:

- `Génération Robots <http://www.generationrobots.com/en/402107-poppy-torso-robot-with-3d-printed-parts.html/>`_

Or you can get all the parts yourself following the `Bill of Material <https://github.com/poppy-project/poppy-torso/blob/master/hardware/doc/BOM.md/>`_. 
The 3D models for the parts can be found `here <https://github.com/poppy-project/poppy-humanoid/releases/tag/hardware_1.0.1/>`_ 
(they are the same as Poppy Humanoid, simply remove the legs and add the `support <https://github.com/poppy-project/robot-support-toolbox/>`_).

Get started with Poppy Torso
++++++++++++++++++++++++++

After :ref:`assembling your robot <poppy_humanoid_assembly_doc>`, try the :ref:`discover quickstart <quickstart_discover>`, then have a look at the :ref:`poppy_torso library <poppy_torso_lib>`

Poppy Ergo Jr
-------------------------------

The Poppy Ergo Jr robot is a small robot arm made of 6 cheap XL-320 Dynamixel servos, 3D-printed parts based on OpenScad and assembled with OLLO rivets. At the end of the arm, you can choose among several ends: a lamp, a gripper hand,...

This robot is the 'little brother' of the ergo robots used in ` the Ergo-robot experiment <https://www.poppy-project.org/project/mathematics-a-beautiful-elsewhere/>_.

.. image:: images/poppy-ergo-jr.jpg
    :width: 20%
    :align: center

Get a Poppy Ergo Jr
+++++++++++++++++

Poppy Ergo Jr is still in development. However, you can already get the parts and motors, as the next development phases will probably add new pieces and not modify the existing ones.

The list of parts to print is `here <https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/parts/BOM.md/>`_ and the 3D files `there <https://github.com/poppy-project/poppy-ergo-jr/releases/>`_

You then need 6 Dynamixel XL-320 (for example from `here <http://www.generationrobots.com/en/401692-dynamixel-xl-320-servo-motor.html/>`_ ), 
a USB2AX to connect them to a computer and a small adaptation `board <https://github.com/poppy-project/poppy-ergo-jr/blob/master/doc/electronic.md>`_.

Get started with Poppy Ergo Jr
++++++++++++++++++++++++++

After :ref:`assembling your robot <poppy_ergo_jr_assembly_doc>`, try the :ref:`discover quickstart <quickstart_discover>`, then have a look at the :ref:`poppy_ergo_jr library <poppy_ergo_jr_lib>`
