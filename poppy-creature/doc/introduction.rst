

Introduction
==============

Poppy-creature is a small library providing a link between specific robots (Poppy Humanoid, Poppy Ergo JR...) and Pypot, the generic, lower level library.

It mainly contains the class definition of :class:`~creatures.abstractcreature.AbstractPoppyCreature` which takes a configuration and builds a :class:`~pypot.robot.robot.Robot` out of it, 
but also a bunch of parameters to launch Snap! or HTTP servers, or to replace the communication toward Dynamixel servos by a communication with a simulator.

Poppy services
===============

But poppy-creature also provides a set of very useful services that can be launched directly from the command line inside your robot 
if you installed the soft from poppy_install TODO LINK. Example::

    poppy-services poppy-humanoid --snap --no-browser
    
This will launch the snap server for a Poppy Humanoid robot without opening the browser page for Snap! 
(if you have a screen, mouse and keyboard connected directly on the head of the robot, you can remove this argument, but in most cases, you launch this 
inside the robot through SSH and then connect in a browser from another computer).

The way to use it is::

    poppy-services <creature_name> <options>
    
the available options are:

* ``--vrep``:  creates the specified creature for using with V-rep simulator
* ``--threejs``: creates the specified creature for using with Three.js simulator (in-browser 3D modelisation) and also maunches the HTTP server needed by the Three.js simulation.
* ``--snap``: launches the Snap! server and directly imports the specific Poppy blocks.
* ``-nb`` or ``--no-browser``: avoid automatic start of Snap! in web browser, use only with --snap
* ``--http``: start a http robot server
* ``--remote``: start a remote robot server
* ``-v`` or ``--verbose``: start services in verbose mode (more logs)


Create your own Poppy creature
=======================

While developping a new Poppy creature, it is first easier to simply define it in a configuration file or dictionnary and instanciate a :class:`~pypot.robot.robot.Robot` from Pypot directly (see :ref:`the robot object from Pypot <robot>`).

But when you want to make it easily usable and available to non-geek public, the best is to create your own creature's library. It should contain a configuration file and a class that extends :class:`~creatures.abstractcreature.AbstractPoppyCreature`.
You can then add your own properties and primitives.

Example from Poppy Humanoid::

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

Don't forget to package it properly using `setuptools <https://pythonhosted.org/an_example_pypi_project/setuptools.html>`_ and to give it to the community!

