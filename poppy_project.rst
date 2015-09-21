The Poppy project
================


Poppy is an open hardware and open-source robotics project. It has been designed to allow researchers and students to easily remove and replace some parts of the body.

It has been originally released by `INRIA Flowers <http://www.inria.fr/equipes/flowers/>`_

The Poppy project consist of several parts:

- Pypot, a Python library allowing to control Dynamixel servomotors in an easy way

- Poppy Humanoid, a 25- degree of freedom humanoid robot with a fully actuated torso. Can be used for education, research or art.

- Poppy Torso, upper part of Poppy Humanoid (15 degrre of freedom). Mainly designed for school usage.

- Poppy ergo_jr, a cheaper 6-degree-of-freedom arm for art and robot discovery.

All these parts are open-source and available to download and modify.

The Poppy project also consist in a very active and diverse community. People of different horizon collabore to improve the project.

Poppy Humanoid
================

Description

**Get a Poppy Humanoid**


You can get a full Poppy Humanoid from one of Poppy's official resellers:

- `Génération Robots <http://www.generationrobots.com/en/402077-poppy-humanoid-kit-with-3d-printed-parts.html/>`_

Or you can get all the parts yourself following the `Bill of Material <https://github.com/poppy-project/poppy-humanoid/blob/master/hardware/doc/BOM.md/>`_. 
The 3D models for the parts can be found `here <https://github.com/poppy-project/poppy-humanoid/releases/tag/hardware_1.0.1/>`_.

.. toctree::
    :titlesonly:
    :maxdepth: 2

    poppy-humanoid/assembly_doc/BOM.md

Poppy Torso
================

Description

**Get a Poppy Torso**


You can get a full Poppy Torso from one of Poppy's official resellers:

- `Génération Robots <http://www.generationrobots.com/en/402107-poppy-torso-robot-with-3d-printed-parts.html/>`_

Or you can get all the parts yourself following the `Bill of Material <https://github.com/poppy-project/poppy-torso/blob/master/hardware/doc/BOM.md/>`_. 
The 3D models for the parts can be found `here <https://github.com/poppy-project/poppy-humanoid/releases/tag/hardware_1.0.1/>`_ 
(they are the same as Poppy Humanoid, simply remove the legs and add the `support <https://github.com/poppy-project/robot-support-toolbox/>`_).

.. toctree::
    :titlesonly:
    :maxdepth: 2

    poppy-torso/BOM.md

Poppy Ergo Jr
================

Description

**Get a Poppy Ergo Jr**

Poppy Ergo Jr is still in development. However, you can already get the parts and motors, as the next development phases will probably add new pieces and not modify the existing ones.

The list of parts to print is `here <https://github.com/poppy-project/poppy-ergo-jr/blob/master/hardware/parts/BOM.md/>`_ and the 3D files `there <https://github.com/poppy-project/poppy-ergo-jr/releases/>`_

You then need 6 Dynamixel XL-320 (for example from `here <http://www.generationrobots.com/en/401692-dynamixel-xl-320-servo-motor.html/>`_ ), 
a USB2AX to connect them to a computer and a small adaptation `board <https://github.com/poppy-project/poppy-ergo-jr/blob/master/doc/electronic.md>`_.

.. _contribute:

**Contribute!**
===============

The `Poppy project's forum <https://forum.poppy-project.org/>`_ contains answer to your question, people that can help you and call for contribution. It is an important part of the project, so don't hesitate to ask, answer and contribute to it !

You can for example create a new Poppy creature, :ref:`extend Pypot <extending_pypot>`, create tutorials and practicals