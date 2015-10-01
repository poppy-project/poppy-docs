# Introduction

Poppy Humanoid is the library allowing you to create a
[pypot.robot.robot.Robot](../../pypot/doc/pypot.robot.html#pypot.robot.robot.Robot) corresponding to a standard Poppy Humanoid
robot.

Using your Poppy Humanoid robot is as simple as:

    from poppy_humanoid import PoppyHumanoid

    poppy = PoppyHumanoid()

    print poppy.motors

If you didn't change the default configuration file, this should connect
to the 25 Dynamixel servomotors through two USB2AX.

Once the PoppyHumanoid object is created, you can start
[discovering it](../../quickstarts/discover.html), control it at a
[basic level](../../pypot/doc/robot.html) or using [primitives](../../pypot/doc/primitive.html)

# Poppy Humanoid robot overview

TODO

Robot's [motors list](motor_list.html)

![image](../assembly_doc/img/motor_naming_convention.jpg)

# Poppy Humanoid specific features

[poppy\_humanoid.poppy\_humanoid.PoppyHumanoid](poppy_humanoid.html#poppy_humanoid.poppy_humanoid.PoppyHumanoid) is not only a
[poppy.creatures.abstractcreature.AbstractPoppyCreature](../../poppy-creature/doc/poppy.creatures.html#poppy.creatures.abstractcreature.AbstractPoppyCreature) (which contains
a [pypot.robot.robot.Robot](../../pypot/doc/pypot.robot.html#pypot.robot.robot.Robot)), it also have its own features and
parameters.

The default goto behavior for each motor is set to 'minijerk' and each
motor of the torso has the 'safe' compliant behavior (see
the [Pypot motor section](../../pypot/doc/motor.html)), to avoid self-collision.

The following primitives are added to the robot (so you can directly use
`poppy.sit_position.start()`):

-   A [poppy\_humanoid.primitives.posture.StandPosition](poppy_humanoid.primitives.html#poppy_humanoid.primitives.posture.StandPosition) named
    `stand_position`: the robot moves to standing position (0 to all
    motors).
-   A [poppy\_humanoid.primitives.posture.SitPosition](poppy_humanoid.primitives.html#poppy_humanoid.primitives.posture.SitPosition) named
    `sit_position`: the robot moves to sitting position (legs bent with
    heels under the buttock)
-   A [poppy\_humanoid.primitives.safe.LimitTorque](poppy_humanoid.primitives.html#poppy_humanoid.primitives.safe.LimitTorque)named
    `limit_torque`: Work In Progress. Each motor automatically sets the
    minimal torque needed to reach its goal position and therefore limit
    power consumption and motor heating. This primitive is looping.
-   A [poppy\_humanoid.primitives.safe.TemperatureMonitor ](poppy_humanoid.primitives.html#poppy_humanoid.primitives.safe.TemperatureMonitor ) named
    `temperature_monitoring`: check the temperature of all motors and
    plays a sound if one is too hot. This primitive is looping and
    started by default.
-   A [poppy\_humanoid.primitives.dance.SimpleBodyBeatMotion](poppy_humanoid.primitives.html#poppy_humanoid.primitives.dance.SimpleBodyBeatMotion) named
    `dance_beat_motion`: Simple primitive to make Poppy shake its upper
    body following a given beat rate in bpm. This primitive is looping.
-   A [poppy\_humanoid.primitives.idle.UpperBodyIdleMotion](poppy_humanoid.primitives.html#poppy_humanoid.primitives.idle.UpperBodyIdleMotion) named
    `upper_body_idle_motion`: Slow and small movements of the upper body
    to have the robot look less 'dead'. This primitive is looping.
-   A [poppy\_humanoid.primitives.idle.HeadIdleMotion](poppy_humanoid.primitives.html#poppy_humanoid.primitives.idle.HeadIdleMotion) named
    `dance_beat_motion`: Slow and small movements of the head to have
    the robot look less 'dead'. This primitive is looping.
-   A [poppy\_humanoid.primitives.interaction.ArmsTurnCompliant](poppy_humanoid.primitives.html#poppy_humanoid.primitives.interaction.ArmsTurnCompliant) named
    `arms_turn_compliant`: Automatically turns the arms compliant when a
    force is applied. This primitive is looping.
-   A [poppy\_humanoid.primitives.interaction.PuppetMaster](poppy_humanoid.primitives.html#poppy_humanoid.primitives.interaction.PuppetMaster) named
    `arms_copy_motion`: Apply the motion made on the left arm to the
    right arm. This primitive is looping.

Remember to remove compliance before starting the primitives!

# Installing

To install the Poppy Humanoid library, you can use pip:

    pip install poppy-humanoid

Then you can update it with:

    pip install --upgrade poppy-humanoid

If you prefer to work from the sources (latest but possibly unstable
releases), you can clone them from
[Github](https://github.com/poppy-project/poppy-humanoid) and install
them with (in the software folder):

    python setup.py install

The requirements for Poppy Humanoid are [Pypot](../../pypot/doc/installation.html) and
[Poppy Creatures](../../poppy-creature/doc/introduction.html).
