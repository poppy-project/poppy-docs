# Install the robotic simulator CoppeliaSim (formerly V-REP)
> **Info** You need to install [Poppy softwares](install-poppy-softwares.md) before installing the CoppeliaSim simulator.

[ CoppeliaSim](http://www.coppeliarobotics.com) is an efficient robotic simulator mainly open source (GNU GPL), which is distributed under a free license for educational entities and have a commercial license for other purposes.
There is also an *PRO EVAL* version which limit the right to backup. As you don't need to backup the scene to use CoppeliaSim with pypot (the Python library made for Poppy creatures), we suggest you to install this version to not worry about copyright infringement.
If you want to modify the CoppeliaSim scene for adding or customizing a Poppy creature, you will have to use the PRO or the EDU version (look at the educational licence.

## Install CoppeliaSim for your OS

[Download  CoppeliaSim](http://www.coppeliarobotics.com/) and follow its guide for installing. According to your system version, you might need a former version of CoppeliaSim/V-REP to work with Poppy. On Windows use [V-REP 3.3.0](https://v-rep-pro-edu.software.informer.com/download/). On Linux use the latest CoppeliaSim version (last tested with CoppeliaSIM 4.2.0 + python3.6.12  + Ubuntu 20.04).

## Test your installation

Open CoppeliaSim with a double click on the desktop icon.
Open the prompt of your Python Distribution (called the *Command Prompt* of Windows), type and press Enter to execute the command below:

```bash
poppy-services --snap --vrep --no-browser poppy-torso`
```
After a one or two seconds, you will have an error like the picture below in your Command prompt.
![VREP_terminal](../img/vrep/vrep3_1.png)

If you switch to the CoppeliaSim window, a popup appeared to inform you that the simulation use custom parameters. This popup block the communication to the Python API of CoppeliaSim. **You have to check the check-box "Do not show this message again" and press "Ok".**
![VREP_checkbox](../img/vrep/vrep3_2.png)

Switch the the command prompt window. You will have to execute the last command (`poppy-services --snap --vrep --no-browser poppy-torso`) and click again to the CoppeliaSim popup (with the check-box checked). **This process will have to be done *three times* to make it works well!**

> **Info** To avoid retyping the same command again and again, you can press the up arrow key to call the last typed line.

When the setup of CoppeliaSim is ready, you can execute the last command without the "--no-browser" part.
```
poppy-services --snap --vrep poppy-torso
```
A new tab will open with your default web-browser. You can program you robot in Snap_!_ or in Python as if you were using a tangible robot.

![jupyter notebook](../img/vrep/lucvincent/luc_vincent-070.jpg)

Note: Under Windows, if you see a firewall popup like the picture below, be sure to check the "private network" check-box.

![firewall](../img/vrep/vrep4.png)




