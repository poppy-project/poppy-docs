# What is pypot?

![image](banderole-pypot.jpg)

Pypot is a framework developed in the [Inria
FLOWERS](https://flowers.inria.fr/) team to make it easy and fast to
control custom robots based on dynamixel motors. This framework provides
different level of abstraction corresponding to different types of use.
More precisely, you can use pypot to:

-   directly control robotis motors through a USB2serial device (both
    protocols v1 and v2 are supported: you can use it with AX, RX, MX
    and XL320 motors),
-   define the structure of your particular robot and control it through
    high-level commands.
-   define primitives and easily combine them to create complex
    behavior.
-   [work in progress] define sensors and integrate them to the
    creature's control.

Pypot has been entirely written in Python to allow for fast development,
easy deployment and quick scripting by non-necessary expert developers.
The serial communication is handled through the standard library and
thus allows for rather high performance (10ms sensorimotor loop).

It is crossed-platform and has been tested on Linux, Windows and Mac OS.
It is distributed under the [GPL V3 open source
license](http://www.gnu.org/copyleft/gpl.html).

Pypot is also compatible with the [V-REP
simulator](http://www.coppeliarobotics.com) and allows you to seamlessly
switch from a real robot to its simulated equivalent without having to
modify your code.

> **note**
>
> The other libraries from the [Poppy project](http://www.poppy-project.org) ([Poppy Humanoid](../../poppy-humanoid/doc/introduction.html)
> :   or [Poppy Ergo
>     Jr](../../poppy-ergo-jr/doc/introduction.html)...) are built
>     on top of pypot and abstract most of its operating and already
>     come with convenient method for creating and starting your robot.
>     So, when starting with a Poppy creature, we advise you to first
>     discover the specific library and dive into Pypot only when you
>     are ready to build advanced programs. Pypot is also a good
>     starting point if you want to define your own Poppy Creatures.
>


# Pypot's architecture

Pypot's architecture is built upon the following basic concepts:

-   **I/O**: [low-level layer](quickstart-lowlevel.html) handling the
    communication with motors or sensors. This abstract layer has been
    designed to be as generic as possible. The idea is to keep each
    specific communication protocol separated from the rest of the
    architecture and allow for an easy replacement of an IO by another
    one - such an example is detailed in the [vrep](vrep.html) section.
-   **Motor** or **Sensor** : abstraction layer allowing to command the
    same type of devices in the same way. Each software [motor](motor.html)
    or sensor is linked with its hardware equivalent.
-   **Controller**:
    :   set of update loops to keep an (or multiple) "hardware"
        device(s) up to date with their "software" equivalent, moreover
        when several devices (e.g. Dynamixel motors) share the same
        communication bus. This synchronization can goes only from the
        hard to the soft (e.g. in the case of a sensor) or both ways
        (e.g. for reading motor values and sending motor commands). The
        calls can be asynchronous or synchronous, each controller can
        have its own refresh frequency. An example of [pypot.robot.controller](pypot.robot.html#pypot.robot.controller.AbstractController)
        is the [pypot.dynamixel.controller.DxlController](pypot.dynamixel.html#pypot.dynamixel.controller.DxlController) which synchronizes
        position/speed/load of all motors on a dynamixel bus in both
        directions. On the same bus, you can have several controllers of
        different frequencies.

-   **Robot**: The [robot layer](robot.html) is a pure abstraction which
    aims at bringing together different types of motors and sensors.
    This high-level is most likely to be the one accessed by the
    end-user which wants to directly control the motors of its robot no
    matter what is the IO used underneath. The robot can be directly
    created using a [configuration file](robot.html)
    describing all IO and Controllers used.
-   **Primitives**: independent behaviors applied to a robot. They are
    not directly accessing the robot registers but are first combined
    through a Primitive Manager which sends the results of this
    combination to the robot. This abstraction is used to designed
    behavioral-unit that can be combined into more complex behaviors
    (e.g. a walking primitive and and balance primitive combined to
    obtain a balanced-walking). [Primitives](primitive.html) are also a
    convenient way to monitor or remotely access a robot - ensuring some
    sort of sandboxing.

Those main aspects of pypot's architecture are summarized in the figure
below.

![image](pypot-archi.jpg)

Refer to this [section](installation.html) to learn how to install pypot
on your system.
