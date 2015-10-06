# Introduction

Poppy-creature is a small library providing a link between specific
robots (Poppy Humanoid, Poppy Ergo JR...) and Pypot, the generic, lower
level library.

It mainly contains the class definition of
[poppy.creatures.abstractcreature.AbstractPoppyCreature](poppy.creatures.html#poppy.creatures.abstractcreature.AbstractPoppyCreature) which takes a
configuration and builds a [pypot.robot.robot.Robot](../../pypot/doc/pypot.robot.html#pypot.robot.robot.Robot) out of it, but also
a bunch of parameters to launch Snap! or HTTP servers, or to replace the
communication toward Dynamixel servos by a communication with a
simulator.

The arguments you can provide are:

-   `base_path` default: None Path where the creature sources are. The
    librarie looks in the default PATH if not set.
-   `config` default: None Path to the configuration file with respect
    to the base-path
-   `simulator` default: None Possible values : 'vrep' or 'threejs'.
    Defines if we are using a simulator (and which one) or a real robot.
-   `scene` default: None Path to the scene to load in the simulator.
    Only if simulator is vrep. Defaults to the scene present in the
    creature library if any (e.g. poppy\_humanoid.ttt).
-   `host` default: 'localhost' Hostname of the machine where the
    simulator runs. Only if simulator is not None.
-   `port` default: 19997 Port of the simulator. Only if simulator is
    not None.
-   `use_snap` default: False Should we launch the Snap! server
-   `snap_host` default: 0.0.0.0 Hostname of the Snap! server
-   `snap_port` default: 6969 Port of the Snap! server
-   `snap_quiet` default: True Should Snap! not output logs
-   `use_http` default: False Should we launch the HTTP server (for
    [REST API use](../../pypot/doc/remote_access.html))
-   `http_host` default: 0.0.0.0 Hostname of the HTTP server
-   `http_port` default: 8080 Port of the HTTP server
-   `http_quiet` default: True Should HTTP not output logs
-   `use_remote` default: False Should we launch the Remote Robot server
    (for  [REST API use](../../pypot/doc/remote_access.html))
-   `remote_host` default: 0.0.0.0 Hostname of the Remote Robot server
-   `remote_port` default: 4242 Port of the Remote Robot server
-   `sync` default: True Should we launch the synchronization loop for
    motor communication (see [the Dynamixel low-level Pypot section](../../pypot/doc/dynamixel.html))

The sources are available on
[Github](https://github.com/poppy-project/poppy-creature).

# Poppy services

But poppy-creature also provides a set of very useful services that can
be launched directly from the command line inside your robot if you
installed the soft from
[poppy\_install](https://github.com/poppy-project/poppy_install) .
Example:

    poppy-services poppy-humanoid --snap --no-browser

This will launch the snap server for a Poppy Humanoid robot without
opening the browser page for Snap! (if you have a screen, mouse and
keyboard connected directly on the head of the robot, you can remove
this argument, but in most cases, you launch this inside the robot
through SSH and then connect in a browser from another computer).

The way to use it is:

    poppy-services <creature_name> <options>

the available options are:

-   `--vrep`: creates the specified creature for using with V-rep
    simulator
-   `--threejs`: creates the specified creature for using with Three.js
    simulator (in-browser 3D modelisation) and also maunches the HTTP
    server needed by the Three.js simulation.
-   `--snap`: launches the Snap! server and directly imports the
    specific Poppy blocks.
-   `-nb` or `--no-browser`: avoid automatic start of Snap! in web
    browser, use only with --snap
-   `--http`: start a http robot server
-   `--remote`: start a remote robot server
-   `-v` or `--verbose`: start services in verbose mode (more logs)

# Create your own Poppy creature

While developping a new Poppy creature, it is first easier to simply
define it in a configuration file or dictionnary and instanciate a
[pypot.robot.robot.Robot](../../pypot/doc/pypot.robot.html#pypot.robot.robot.Robot) from Pypot directly (see
the robot object from [Pypot](../../pypot/doc/robot.html)).

But when you want to make it easily usable and available to non-geek
public, the best is to create your own creature's library. It should
contain a configuration file and a class that extends
\~poppy.creatures.abstractcreature.AbstractPoppyCreature. You can then
add your own properties and primitives.

Example from Poppy Humanoid:

```python
class PoppyHumanoid(AbstractPoppyCreature):
    @classmethod
    def setup(cls, robot):
        robot._primitive_manager._filter = partial(numpy.sum, axis=0)

        for m in robot.motors:
            m.goto_behavior = 'minjerk'

        for m in robot.torso:
            m.compliant_behavior = 'safe'

        # Attach default primitives:
        # basic primitives:
        robot.attach_primitive(StandPosition(robot), 'stand_position')
        robot.attach_primitive(SitPosition(robot), 'sit_position')

        # Safe primitives:
        robot.attach_primitive(LimitTorque(robot), 'limit_torque')
```


Package your code it properly using
[setuptools](https://pythonhosted.org/an_example_pypi_project/setuptools.html)
. For a better integration with the Poppy installer scripts, please have
in the root of your repo a folder named *software* containing:

-   the installation files (setup.py, MANIFEST, LICENCE)
-   a folder named poppy\_yourcreaturename containing your actual code

At the end, don't forget to share it to the community! Most interesting
creatures will be added to this documentation!

# Installing

To install the Poppy Creature library, you can use pip:

    pip install poppy-creature

Then you can update it with:

    pip install --upgrade poppy-creature

If you prefer to work from the sources (latest but possibly unstable
releases), you can clone them from
[Github](https://github.com/poppy-project/poppy-creature) and install
them with (in the software folder):

    python setup.py install

The requirements for Poppy Creature are [Pypot](../../pypot/doc/installation.html) and
bottle.
