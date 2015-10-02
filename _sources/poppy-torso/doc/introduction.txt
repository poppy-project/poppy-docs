# Introduction

Poppy Torso is the library allowing you to create a
[pypot.robot.robot.Robot](../../pypot/doc/pypot.robot.html#pypot.robot.robot.Robot) corresponding to a standard Poppy Torso robot.

Using your Poppy Torso robot is as simple as:

    from poppy_torso import PoppyTorso

    poppy = PoppyTorso()

    print poppy.motors

If you didn't change the default configuration file, this should connect
to the 13 Dynamixel servomotors through the USB2AX.

Once the PoppyTorso object is created, you can start
[discovering it](../../quickstarts/discover.html), control it at a
[basic level](../../pypot/doc/robot.html) or using [primitives](../../pypot/doc/primitive.html)

The sources are available on
[Github](https://github.com/poppy-project/poppy-torso).

# Poppy Torso robot overview

TODO

image motors

list motors, move, etc

# Poppy Torso specific features

[poppy\_torso.poppy\_torso.PoppyTorso](poppy_torso.html#poppy_torso.poppy_torso.PoppyTorso) is not only a
[poppy.creatures.abstractcreature.AbstractPoppyCreature](../../poppy-creature/doc/poppy.creatures.html#poppy.creatures.abstractcreature.AbstractPoppyCreature) (which contains
a [pypot.robot.robot.Robot](../../pypot/doc/pypot.robot.html#pypot.robot.robot.Robot)), it also have its own features and
parameters.

The default goto behavior for each motor is set to 'minijerk'.

The following primitives are added to the robot (so you can directly use
`poppy.limit_torque.start()`):

-   A [poppy\_torso.primitives.safe.LimitTorque](poppy_torso.primitives.html#poppy_torso.primitives.safe.LimitTorque) named `limit_torque`:
    Work In Progress. Each motor automatically sets the minimal torque
    needed to reach its goal position and therefore limit power
    consumption and motor heating. This primitive is looping.
-   A [poppy\_torso.primitives.safe.TemperatureMonitor](poppy_torso.primitives.html#poppy_torso.primitives.safe.TemperatureMonitor) named
    `temperature_monitoring`: check the temperature of all motors and
    plays a sound if one is too hot. This primitive is looping and
    started by default.
-   A [poppy\_torso.primitives.dance.SimpleBodyBeatMotion](poppy_torso.primitives.html#poppy_torso.primitives.dance.SimpleBodyBeatMotion) named
    `dance_beat_motion`: Simple primitive to make Poppy shake its upper
    body following a given beat rate in bpm. This primitive is looping.
-   A [poppy\_torso.primitives.idle.UpperBodyIdleMotion](poppy_torso.primitives.html#poppy_torso.primitives.idle.UpperBodyIdleMotion) named
    `upper_body_idle_motion`: Slow and small movements of the upper body
    to have the robot look less 'dead'. This primitive is looping.
-   A [poppy\_torso.primitives.idle.HeadIdleMotion](poppy_torso.primitives.html#poppy_torso.primitives.idle.HeadIdleMotion) named
    `dance_beat_motion`: Slow and small movements of the head to have
    the robot look less 'dead'. This primitive is looping.
-   A [poppy\_torso.primitives.interaction.ArmsTurnCompliant](poppy_torso.primitives.html#poppy_torso.primitives.interaction.ArmsTurnCompliant) named
    `arms_turn_compliant`: Automatically turns the arms compliant when a
    force is applied. This primitive is looping.
-   A [poppy\_torso.primitives.interaction.PuppetMaster](poppy_torso.primitives.html#poppy_torso.primitives.interaction.PuppetMaster) named
    `arms_copy_motion`: Apply the motion made on the left arm to the
    right arm. This primitive is looping.

Remember to remove compliance before starting the primitives!

# Installing

To install the Poppy Torso library, you can use pip:

    pip install poppy-torso

Then you can update it with:

    pip install --upgrade poppy-torso

If you prefer to work from the sources (latest but possibly unstable
releases), you can clone them from
[Github](https://github.com/poppy-project/poppy-torso) and install them
with (in the software folder):

    python setup.py install

The requirements for Poppy Torso are [Pypot](../../pypot/doc/installation.html) and
[Poppy Creatures](../../poppy-creature/doc/introduction.html).
