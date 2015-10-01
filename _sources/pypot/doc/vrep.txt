
.. _pypot_vrep:

Using a simulated robot with V-REP
**********************************

See :ref:`here <quickstart_vrep>` for a quickstart using Poppy Humanoid

What is V-rep ?
-------------------

As it is often easier to work in simulation rather than with the real robot, pypot has been linked with the `V-REP simulator <http://www.coppeliarobotics.com>`_. It is described as the "Swiss army knife among robot simulators" and is a very powerful tool to quickly (re)create robotics setup. As presenting V-REP is way beyond the scope of this tutorial, we will here assume that you are already familiar with this tool. Otherwise, you should directly refer to `V-REP documentation <http://www.coppeliarobotics.com/helpFiles/index.html>`_.

Details about how to connect pypot and V-REP can be found in `this post <https://forum.poppy-project.org/t/howto-connect-pypot-to-your-simulated-version-of-poppy-humanoid-in-v-rep/332>`_.

The connection between pypot and V-REP was designed to let you seamlessly switch from your real robot to the simulated one. It is based on `V-REP's remote API <http://www.coppeliarobotics.com/helpFiles/en/remoteApiFunctionsPython.htm>`_.

In order to connect to V-REP through pypot, you will only need to install the `V-REP <http://www.coppeliarobotics.com/downloads.html>`_ simulator. Pypot comes with a specific :class:`~pypot.vrep.io.VrepIO` designed to communicate with V-REP through its `remote API <http://www.coppeliarobotics.com/helpFiles/en/remoteApiFunctionsPython.htm>`_.

This IO can be used to:

* connect to the V-REP server : :class:`~pypot.vrep.io.VrepIO`
* load a scene : :meth:`~pypot.vrep.io.VrepIO.load_scene`
* start/stop/restart a simulation : :meth:`~pypot.vrep.io.VrepIO.start_simulation`, :meth:`~pypot.vrep.io.VrepIO.stop_simulation`, :meth:`~pypot.vrep.io.VrepIO.restart_simulation`
* pause/resume the simulation : :meth:`~pypot.vrep.io.VrepIO.pause_simulation`, :meth:`~pypot.vrep.io.VrepIO.resume_simulation`
* get/set a motor position : :meth:`~pypot.vrep.io.VrepIO.get_motor_position`, :meth:`~pypot.vrep.io.VrepIO.set_motor_position`
* get an object position/orientation : :meth:`~pypot.vrep.io.VrepIO.get_object_position`, :meth:`~pypot.vrep.io.VrepIO.get_object_orientation`

Connecting to V-REP
-------------------------------------------------------------------------

First launch V-rep.

Then create your :class:`~pypot.robot.robot.Robot` using the :func:`~pypot.robot.config.from_vrep` method, providing the vrep host, port and scene instead of the :func:`~pypot.robot.config.from_config` method::

    # Working with the simulated version
    import pypot.vrep

    poppy = pypot.vrep.from_vrep(config, vrep_host, vrep_port, vrep_scene)


This function tries to connect to a V-REP instance and expects to find motors with names corresponding as the ones found in the config.

.. note:: The :class:`~pypot.robot.robot.Robot` returned will also provide a convenience reset_simulation method which resets the simulation and the robot position to its intial stance.

Default host is localhost ('127.0.0.1') and default port is 19997 (the default one for V-rep), so if you launched V-rep on the same computer, you can use the :func:`~pypot.robot.config.from_vrep` function with only the config argument.

The default vrep_scene is None, you can set it to the path of any .ttt file (containing, for example, additionnal objects that your robot can interact with).

The tracked_objects optionnal parameter is a list of V-REP dummy object to track, while the tracked_collisions is a list of V-REP collision to track.
 



The :class:`~pypot.robot.robot.Robot` object will be equivalent to the one created in the case of a real robot, but not all dynamixel registers have their V-REP equivalent. For the moment, only the control of the position is used. Primitives (that use only thr mootrs positions) can be used without problems.

If you use a creature-specific library to create your :class:`~pypot.robot.robot.Robot` (as poppy-humanoid for example), you can simply use the 'simulator' argument. If V-rep is not on the same machine, specify the vrep_host and vrap-port arguments::

    from poppy_humanoid import PoppyHumanoid
    
    poppy = PoppyHumanoid(simulator='vrep')
