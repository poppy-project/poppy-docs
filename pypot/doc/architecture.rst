
.. _architecture:

Pypot's architecture
==================

Pypot's architecture is built upon the following basic concepts:

* **I/O**: low-level layer handling the communication with motors or sensors. This abstract layer has been designed to be as generic as possible. The idea is to keep each specific communication protocol separated from the rest of the architecture and allow for an easy replacement of an IO by another one - such an example is detailed in the next section when `dynamixel IO <http://poppy-project.github.io/pypot/pypot.dynamixel.html#module-pypot.dynamixel.io>`_ is replaced by the `communication layout with the VREP <http://poppy-project.github.io/pypot/pypot.vrep.html#module-pypot.vrep.io>`_ simulator.

* **Motor** or **Sensor** : abstraction layer allowing to command the same type of devices in the same way. Each *software* motor or sensor is linked with its *hardware* equivalent.

* **Controller**: set of update loops to keep an (or multiple) "hardware" device(s) up to date with their "software" equivalent, moreover when several devices (e.g. Dynamixel motors) share the same communication bus.  
    This synchronization can goes only from the hard to the soft (e.g. in the case of a sensor) or both ways (e.g. for reading motor values and sending motor commands). 
    The calls can be asynchronous or synchronous, each controller can have its own refresh frequency. 
    An example of :class:`~pypot.robot.controller.Controller` is the :class:`~pypot.dynamixel.controller.DxlController` which synchronizes position/speed/load of all motors on a dynamixel bus in both directions. On the same bus, you can have several controllers of different frequencies.

* **Robot**: The robot layer is a pure abstraction which aims at bringing together different types of motors and sensors. This high-level is most likely to be the one accessed by the end-user which wants to directly control the motors of its robot no matter what is the IO used underneath. The robot can be directly created using a `configuration file <http://poppy-project.github.io/pypot/controller.html#writing-the-configuration>`_ describing all IO and Controllers used.

* **Primitive**: independent behaviors applied to a robot. They are not directly accessing the robot registers but are first combined through a `Primitive Manager <http://poppy-project.github.io/pypot/primitive.html>`_ which sends the results of this combination to the robot. This abstraction is used to designed behavioral-unit that can be combined into more complex behaviors (e.g. a walking primitive and and balance primitive combined to obtain a balanced-walking). Primitives are also a convenient way to monitor or remotely access a robot - ensuring some sort of sandboxing.

Those main aspects of pypot's architecture are summarized in the figure below.

.. image:: pypot-archi.jpg
    :width: 60%
    :align: center