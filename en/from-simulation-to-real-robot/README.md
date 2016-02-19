# Switching from a simulated to a real Poppy robot

A key feature of the Poppy project is to let you, as seamlessly as possible, switch from a simulated robot (e.g. using V-REP) to a real one. It is particularly useful when:

* Developing an experiment where you can setup everything using the simulation, then run it on the real robot.
* Working in a classroom context where students can work on their own computer via the simulation and share a robot for real world tests

While it has been designed to cut the effort needed to switch from one to the other, there are still a few steps to understand. One of the major difference is when you are working in simulation everything runs on your own computer while when you are using a real robot, the software (e.g. the Python Notebooks) actually runs in the robot.
