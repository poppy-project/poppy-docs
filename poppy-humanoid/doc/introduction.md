# Introduction

Poppy Humanoid is the library allowing you to create a
\~pypot.robot.robot.Robot corresponding to a standard Poppy Humanoid
robot.

Using your Poppy Humanoid robot is as simple as:

    from poppy_humanoid import PoppyHumanoid

    poppy = PoppyHumanoid()

    print poppy.motors

If you didn't change the default configuration file, this should connect
to the 25 Dynamixel servomotors through two USB2AX.

Once the PoppyHumanoid object is created, you can start
discovering it \<quickstart\_discover\>, control it at a
basic level  \<robot\> or using primitives \<primitives\>.

# Poppy Humanoid robot overview

TODO

Robot's motors list  \<poppy\_humanoid\_motors\_list\>

![image](../assembly_doc/img/motor_naming_convention.jpg%0A%20:width:%2030%%0A%20:align:%20center)

# Poppy Humanoid specific features

\~poppy\_humanoid.poppy\_humanoid.PoppyHumanoid is not only a
\~poppy.creatures.abstractcreature.AbstractPoppyCreature (which contains
a \~pypot.robot.robot.Robot), it also have its own features and
parameters.

The default goto behavior for each motor is set to 'minijerk' and each
motor of the torso has the 'safe' compliant behavior (see
the Pypot motor section \<motor\>), to avoid self-collision.

The following primitives are added to the robot (so you can directly use
`poppy.sit_position.start()`):

-   A \~poppy\_humanoid.primitives.posture.StandPosition named
    `stand_position`: the robot moves to standing position (0 to all
    motors).
-   A \~poppy\_humanoid.primitives.posture.SitPosition named
    `sit_position`: the robot moves to sitting position (legs bent with
    heels under the buttock)
-   A \~poppy\_humanoid.primitives.safe.LimitTorque named
    `limit_torque`: Work In Progress. Each motor automatically sets the
    minimal torque needed to reach its goal position and therefore limit
    power consumption and motor heating. This primitive is looping.
-   A \~poppy\_humanoid.primitives.safe.TemperatureMonitor named
    `temperature_monitoring`: check the temperature of all motors and
    plays a sound if one is too hot. This primitive is looping and
    started by default.
-   A \~poppy\_humanoid.primitives.dance.SimpleBodyBeatMotion named
    `dance_beat_motion`: Simple primitive to make Poppy shake its upper
    body following a given beat rate in bpm. This primitive is looping.
-   A \~poppy\_humanoid.primitives.idle.UpperBodyIdleMotion named
    `upper_body_idle_motion`: Slow and small movements of the upper body
    to have the robot look less 'dead'. This primitive is looping.
-   A \~poppy\_humanoid.primitives.idle.HeadIdleMotion named
    `dance_beat_motion`: Slow and small movements of the head to have
    the robot look less 'dead'. This primitive is looping.
-   A \~poppy\_humanoid.primitives.interaction.ArmsTurnCompliant named
    `arms_turn_compliant`: Automatically turns the arms compliant when a
    force is applied. This primitive is looping.
-   A \~poppy\_humanoid.primitives.interaction.PuppetMaster named
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

The requirements for Poppy Humanoid are Pypot \<pypot\_install\> and
Poppy Creatures \<poppy\_creature\_install\>.
