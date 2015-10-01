.. _poppy_ergo_jr_lib:

Introduction
==============

Poppy Ergo Jr is the library allowing you to create a :class:`~pypot.robot.robot.Robot` corresponding to a standard Poppy Ergo Jr robot.

Using your Poppy Torso robot is as simple as::

    from poppy_ergo_jr import PoppyErgoJr
    
    poppy = PoppyErgoJr()
    
    print poppy.motors
    
If you didn't change the default configuration file, this should connect to the 6 Dynamixel servomotors through the USB2AX. 

Once the PoppyErgoJr object is created, you can start :ref:`discovering it <quickstart_discover>`, control it at a :ref:`basic level  <robot>` or using :ref:`primitives <primitives>`.


.. _poppy_ergo_jr_robot:

Poppy Ergo Jr robot overview
======================

TODO

image motors

list motors, move, etc


Poppy Ergo Jr specific features
========================

:class:`~poppy_ergo_jr.poppy_ergo_jr.PoppyErgoJr`  is not only a :class:`~poppy.creatures.abstractcreature.AbstractPoppyCreature` (which contains a :class:`~pypot.robot.robot.Robot`), it also have its own features and parameters.

The motors with IDs 0, 2 and 4 have their max_torque set to 0.7, so they can use only 70% of their maximal power.

The following primitives are added to the robot (so you can directly use ``poppy.base_posture.start()``):

* A :class:`~poppy_ergo_jr.postures.BasePosture` named ``base_posture``: the robot goes in an initial posture.
* A :class:`~poppy_ergo_jr.postures.RestPosture` named ``rest_posture``: the robot goes in a 'resting' posture.
* A :class:`~poppy_ergo_jr.dance.Dance` named ``dance``: Simple dance based on sinusoidal motions. This primitive is looping.
* A :class:`~poppy_ergo_jr.jump.Jump` named ``jump``: The robot folds on itself, then moves quickly, which results in a jump (if the robot base if not too heavy).

If the robot is simulated, another primitive is launched:

* A :class:`~poppy_ergo_jr.headfollow.HeadFollow` named ``head_follow``: The robot's *head*, or end-point, follows a marker from the simulator. This primitive is looping.

Remember to remove compliance before starting the primitives!

.. _poppy_ergo_jr_install:

Installing
===========

To install the Poppy Ergo Jr library, you can use pip::

    pip install poppy-ergo-jr
    
Then you can update it with::

    pip install --upgrade poppy-ergo-jr
    
If you prefer to work from the sources (latest but possibly unstable releases), you can clone them from `Github <https://github.com/poppy-project/poppy-ergo-jr>`_ and install them with (in the software folder)::

    python setup.py install
    
The requirements for Poppy Ergo Jr are :ref:`Pypot <pypot_install>` and :ref:`Poppy Creatures <poppy_creature_install>`.
    