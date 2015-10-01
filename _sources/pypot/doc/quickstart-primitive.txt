.. _quickstart_primitive:

QuickStart: use a primitive
============================================

What is a primitive?
-----------------------------------

A primitive is a behavior, simple or complex, that can be started, stopped and executes in parallel of your script.

Primitives allow you to build really easily complex and modular behavior. For example, you can have one primitive to move the head, one to walk and one to check if someone moves your arm.

A primitive must first be created, then you call the *start()* function to start it. When you want to stop it, simply use the *stop()* function.
While the primitive runs, it call the *run()* function in a loop.

Some primitives are defined in Pypot. Other of specific to a robot and therefore defined in the specific libraries. You can of course define you own primitives.

Example: Record and replay moves
-----------------------------------------------------------------

The :mod:`~pypot.primitive.move` module contains utility classes to help you record and play moves. A :class:`~pypot.primitive.move.Move` object simply contains a sequence of positions.


The :class:`~pypot.primitive.move.MoveRecorder` and :class:`~pypot.primitive.move.MovePlayer` are primitives included in Pypot and allow you to record a move and replay it.

Assuming you have a :class:`~pypot.robot` poppy already created:

::

    from pypot.primitive.move import Move, MoveRecorder, MovePlayer

    record_frequency = 20.0 # This means that a new position will be recorded 50 times per second.
    recorded_motors = poppy.motors # We will record the position of all motors
    
    #disable torque for all motors
    for m in recorded_motors:
        m.compliant = True

    #create the recorder primitive
    recorder = MoveRecorder(poppy, record_frequency, recorded_motors)
  
    print "start recording"    
    recorder.start()

    time.sleep(20)

    print "stop recording" 
    recorder.stop()

    #save the recorded move in a file
    with open('mymove.json', 'w') as f:
        recorder.move.save(f)

During the 20 seconds wait, move the robot. The angular positions will be recorded, stored in recorder.move and, at the end, saved into a file called mymove.json. You can open this file with text editor to check what it contains.

We can now replay the move:

::

    #read the file containing the move
    with open('mymove.json') as f:
        loaded_move = Move.load(f)
        
    #create the primitive
    player = MovePlayer(poppy, loaded_move)
    
    #enable torque for all motors
    for m in poppy.motors:
        m.compliant = False
    
    print "starting"
    player.start()
    player.wait_to_stop()
    print "finished"

    #disable torque for all motors
    for m in poppy.motors:
        m.compliant = True
        
    time.sleep(0.1)
    
To learn more about primitives, see :ref:`here <primitives>`.