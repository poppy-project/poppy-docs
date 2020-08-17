# Programming Poppy robots using Snap_!_

<!-- toc -->

Snap_!_ is a blocks-based graphical programming language that allows users to create interactive animations, games, and more, while learning about mathematical and computational ideas.

Snap_!_ was inspired by Scratch (a project of the Lifelong Kindergarten Group at the MIT Media Lab), but also targets both novice and more advanced users by including and expanding Scratch's features.

Snap_!_ is open-source and it is entirely written in javascript, you can use it from the [official website](http://snap.berkeley.edu/snapsource/snap.html) but you can also use a [copy of the website](https://github.com/jmoenig/Snap--Build-Your-Own-Blocks/archive/4.0.6.zip) in your personal computer and open the `snap.html` file in your browser.

> **Warning** Even if Snap_!_ use JavaScript and HTML5 which are browser independent technologies, opening blocks for Poppy robots in Snap_!_ is far faster in a web browser based on Webkit engine. We strongly recommend you to use [Chromium Browser](http://chromium.woolyss.com/) (which is very similar to Chrome without tracking tools), or Google Chrome.

## Introduction to Snap_!_ programming

This chapter will focus on things necessary to understand in Snap_!_ for using Poppy creatures.

If you want a well designed online lesson on Snap_!_ we strongly encourage you to look at the ["Beauty and Joy of Computing"](http://bjc.edc.org/bjc-r/course/bjc4nyc_2015-2016.html) (BJC) course made by the University of Berkeley for New York high school students.

Some of the snapshots and concepts of BJC have been used for writing this chapter.

### Connect your robot to Snap_!_

#### If you use a simulated robot on V-REP

> **Info** You need to have installed Poppy software libraries and V-REP simulator on your computer. If it is not done, go to the [install poppy software section](../installation/install-poppy-softwares.md).

First open V-REP.

The quickest way is to use the command line utility [poppy-service](../software-libraries/poppy-creature.md#poppy-services). Copy and press enter to execute the command below in your command prompt (windows) or terminal (OSX and Linux):

```bash
poppy-services poppy-ergo-jr --snap --vrep
```

*Substitute 'poppy-ergo-jr' with 'poppy-humanoid' or 'poppy-torso' to launch respectively a Poppy Humanoid or a Poppy Torso*.

It will open a Snap_!_ tab in your web browser for a simulated poppy-ergo-jr. If it is not automatically done, you can open Snap with preloaded blocks at [simu.poppy-project.org/snap/](http://simu.poppy-project.org/snap/#open:https://raw.githubusercontent.com/poppy-project/pypot/master/pypot/server/snap_projects/pypot-snap-blocks.xml)

> **Warning** Every popup in V-REP will block the communication to the robot interface. If a popup appear, close it and restart the command above.

**Alternative method**: Instead of using `poppy-service` you can start it in full python:

```python
# use PoppyTorso PoppyHumanoid or PoppyEgoJr depending on what you want
from pypot.creatures import PoppyErgoJr
poppy = PoppyErgoJr(simulator='vrep', use_snap=True)
```

#### If you use a simulated robot on poppy-simu (web viewer)

> **Info** You need to have installed Poppy software libraries on your computer. If it is not done, go to the [install poppy software section](../installation/install-poppy-softwares.md).

The quickest way is to use the command line utility [poppy-service](../software-libraries/poppy-creature.md#poppy-services). Copy and press enter to execute the command below in your command prompt (windows) or terminal (OSX and Linux):

```bash
poppy-services poppy-ergo-jr --snap --poppy-simu
```

> **Warning** poppy-simu is only available for poppy-ergo-jr. Other creatures are only supported in V-REP.

It will open a Snap_!_ tab in your web browser for a simulated poppy-ergo-jr. If it is not automatically done, you can open Snap with preloaded blocks at **[simu.poppy-project.org/snap/](http://simu.poppy-project.org/snap/#open:https://raw.githubusercontent.com/poppy-project/pypot/master/pypot/server/snap_projects/pypot-snap-blocks.xml)** and the robot viewer at **[simu.poppy-project.org/poppy-ergo-jr](http://simu.poppy-project.org/poppy-ergo-jr)**.

**Alternative method**: Instead of using `poppy-service` you can start it in full python:

```python
from pypot.creatures import PoppyErgoJr
poppy = PoppyErgoJr(simulator='poppy-simu', use_snap=True)
```

#### If you have a tangible robot

First, you must be connected to the same network LAN area than your robot (e.g. on the same router or Wifi).

You have to go on the web homepage of your robot with its URL. You can use its IP address (for example http://192.168.1.42) if you have a way to know it or its hostname like http://poppy.local. To find its IP address look at [the zeroconf chapter](../installation/install-zeroconf.md#alternatives-to-find-the-ip-address-of-a-computer-on-your-local-network). To use directly its hostname http://poppy.local you must have a Zeroconf software installed on your computer (aka ["Bonjour print services for Windows"](https://support.apple.com/kb/DL999?locale=en_US) if you are running Windows).

The home page of your poppy creature should look like the snapshot below: ![find blocks](../img/snap/homepage.png)

Click on the "Start Snap!" link to open the Snap_!_ interface at start the connection with the Poppy robot.

Poppy special blocks are stored in the Examples. Go to "file" icon -> open -> Examples -> click on "Poppy blocks". It may take some time to load the blocks (~5-15 seconds), be patient.

### Interface and general ideas

### Saving in Snap_!_

There are three ways of saving a project in Snap_!_

#### Save the project in your web browser

![Save click](../img/snap/snap_save.png)

When you are not logged in Snap_!_ Cloud, the default behaviour of Snap_!_ is to save your project in **your browser**.

Technically this uses the Local Storage which is a memory space in your web browser where websites can store offline data. This is very convenient because you have not to register or to see Snap_!_ project files, but keep in mind that **these projects are only visible in this specific web browser in this specific computer**.

#### Snap_!_ Cloud

> « There is no Cloud, it's just someone else's computer ».

Instead of saving your projects on your web browser, you can save them in Snap_!_ servers in UC Berkeley, called "cloud". Moreover, this allows you to share your project with anyone, with a simple link.

##### Create an account on Snap_!_ cloud

Click on the cloud button -> "signup...".

![Create account](../img/snap/snap_cloud_1.png)

Fill the required fields in the modal window for signing up.

![Create account](../img/snap/dialog-cloud-signup.png)

You will soon receive a validation email with a random password. You can now log in with your username and password.

![Login1](../img/snap/snap_login1.png)

If you use your personal computer, remember to check the "stay signed in on this computer [...]" checkbox.

![Login2](../img/snap/snap_login2.png)

After logging in account, you are free to change your password: click on the cloud button -> "Change Password".

![Create account](../img/snap/logout-menu.png)

##### Share your Snap_!_ project

The big advantage of using Snap_!_ Cloud is the ability to share a copy of your project with anyone. To share a Snap_!_ project, you first need to be logged in Snap_!_ Cloud and having your current project saved ("save" or "save as"). Go to the "open" menu:

![Open menu](../img/snap/snap_open.png)

In the cloud section, select the project you want to share and click on "Share" button.

![Share](../img/snap/snap_cloud_3.png)

**Here is the trick step:** to see the share link, you have to click on the "Open" button.

![Open share](../img/snap/snap_cloud_4.png)

And this will re-open your project with the public sharing URL.

![Sharing URL](../img/snap/snap_cloud_5.png)

You can copy and paste the URL and share it by the way you want to your friends or to the Poppy community with the forum [forum.poppy-project.org](https://forum.poppy-project.org/).

When you open a share project, the project is automatically opened in full screen on the sprite zone. To quit the full screen you have to click on the double arrow at the top of the snapshot below. ![Sharing URL](../img/snap/snap_share_full_screen.png)

#### Export/Import your Snap_!_ project

If you have a limited access to internet and you want to share project with other people, the best way is to export it: ![Export section](../img/snap/snap_cloud_5.png) A new tab in your web browser will be opened with an XML file like the picture below. ![Export section](../img/snap/snap_xml_save_as.png) This file describe all your Snap_!_ project in a a simple file. It's not made to be human readable so don't be afraid, you just have to save it on your computer. For that, do a right click, chose "save as" and a proper name and location on you computer for this project.

If you want to import a previously exported project, you simply have to click on the import section of the file icon. ![import section](../img/snap/snap_import.png)

### Search Poppy blocks

Every Poppy block in Snap_!_ begins by a robot icon. So you can search all of them by the robot keyword. To search a specific block, do a right click on the block area, or use the keyboard shortcut CTRL+F. ![find blocks](../img/snap/find_blocks.png) ![find blocks](../img/snap/find_blocks2.png)

<!-- ### First steps with Snap_!_ and a Poppy creature

#### Test the connection between Snap_!_ and your creature

 -->

#### Réseau

First test your connection with the (tangible or simulated) robot with the "test connection" block. ![test connection](../img/snap/test_connection.png). if the block answer is "You may have connection troubles", your "host" variable inside the Snap_!_ project is probably wrong. The host variable must be the IP or the hostname+".local" of your robot ; if you're using V-REP localhost is used to point to your own computer.

![test connection3](../img/snap/test_connection3.png).

### Build your own blocks!

The functionality to build your own block was the first difference between Scratch and Snap_!_ (now it's also possible to make custom blocks in Scratch)! <!-- TODO -->

## Description of Poppy blocks

|                                                            | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ---------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![](../img/snap/snap_blocks/set_host.png)                  | This block allows you to connect Snap! to your robot. The host input can accept : - robot_name.local (e.g. : poppy.local if your robot’s name is poppy)- the IP address (e.g. 123.124.145.176)                                                                                                                                                                                                                                                                                  |
| ![](../img/snap/snap_blocks/test_connection.png)           | Click on this block to verify that you are connected to your robot.                                                                                                                                                                                                                                                                                                                                                                                                             |
| ![](../img/snap/snap_blocks/set_motors_compliant.png)      | Put one or many motors in compliant or stiff mode. Motors are hand-drivable in compliant mode but must be in stiff mode to controlled with Snap!.The “motor(s)” input can accept:- string of a motor name (e.g. m1)- string of many motors separated with spaces (e.g. m1 m2 m4)- a Snap! list of motors like the reporter block "$robot all motors"" or the block “list”"                                                                                                      |
| ![](../img/snap/snap_blocks/set_position.png)              | Put one or many motors in a position (angle in degree) in a given time.The “motor(s)” input can accept: - string of a motor name (e.g. m1) - string of many motors separated with spaces (e.g. m1 m2 m4) - a Snap! list of motors like the reporter block "$robot all motors"" or the block “list”. “Wait” can be true or false. If it’s on True, the action will wait the end of the previous action. If it’s on False, then the action will proceed during the previous one." |
| ![](../img/snap/snap_blocks/reset.png)                     | Restart the software inside the robot.                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ![](../img/snap/snap_blocks/set_register_of_motor.png)     | Put the value to one register (position, speed, max torque, …) of one or many motors.                                                                                                                                                                                                                                                                                                                                                                                           |
| ![](../img/snap/snap_blocks/set_led.png)                   | Activate/deactivate color leds of motors and choose the color of your choice.The “motor(s)” input can accept: - string of a motor name (e.g. m1) - string of many motors separated with spaces (e.g. m1 m2 m4) - a Snap! list of motors like the reporter block "$robot all motors"" or the block “list”                                                                                                                                                                        |
| ![](../img/snap/snap_blocks/play_move_reporter.png)        | Play a movement at a given speed. It is necessary to indicate the exact name of the movement previously recorded. This block can be nested in the “concurrent/sequential” block."                                                                                                                                                                                                                                                                                               |
| ![](../img/snap/snap_blocks/sequence.png)                  | All blocks in input are run one after each other.You can use this block to play concurrently many sequently move.                                                                                                                                                                                                                                                                                                                                                               |
| ![](../img/snap/snap_blocks/concurrent.png)                | All reports input are run simultaneously.You can use this block to play concurrently many recorded move.                                                                                                                                                                                                                                                                                                                                                                        |
| ![](../img/snap/snap_blocks/create_and_start_record.png)   | Create and start a movement recorded by demonstration to the given motors.                                                                                                                                                                                                                                                                                                                                                                                                      |
| ![](../img/snap/snap_blocks/stop_record_and_save_move.png) | Stop a record and save the recorded move in the robot.Be careful, you must have previously defined a move record with the "create & start record move ..."" block.                                                                                                                                                                                                                                                                                                              |
| ![](../img/snap/snap_blocks/stop_move.png)                 | Stop a movement that is being played.                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ![](../img/snap/snap_blocks/play_concurently_moves.png)    | Play movements at the same time (can be nested to concurrent block). Inputs can be : - move name (string) - any reporter block, like sequential or play sequentially"                                                                                                                                                                                                                                                                                                           |
|                                                            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ![](../img/snap/snap_blocks/play_sequentially_moves.png)   | Play movements following in order (can be nested to sequential block). Inputs can be : - move name (string) - any reporter block, like sequential or play sequentially                                                                                                                                                                                                                                                                                                          |
| ![](../img/snap/snap_blocks/start_behaviours.png)          | Start/Stop/Pause/Resume an integrated behaviour of the robot. It can be a position, a movement, a sensorimotor loop, high level camera feature..                                                                                                                                                                                                                                                                                                                                |
| ![](../img/snap/snap_blocks/play_move_in_reverse.png)      | Play a move in reverse at a given speed (reporter block)                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ![](../img/snap/snap_blocks/play_move_command.png)         | Play a move at a given speed (command block)                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ![](../img/snap/snap_blocks/motors_in_group.png)           | Give motors which are in a given group. You can know groups name with the block “all motors groups”.                                                                                                                                                                                                                                                                                                                                                                            |
| ![](../img/snap/snap_blocks/all_motors.png)                | Return a list with the name of every motors in the robot.                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ![](../img/snap/snap_blocks/get_register.png)              | Give the value of a register (position, speed, load, ... ) of one or many motors.                                                                                                                                                                                                                                                                                                                                                                                               |
| ![](../img/snap/snap_blocks/get_all_motors_position.png)   | Give the position of every motors. It is a shortcut to the block above. It is useful to make a snapshot of pose of the robot.                                                                                                                                                                                                                                                                                                                                                   |
| ![](../img/snap/snap_blocks/index_of_motor.png)            | Return the index of a motor name in the "all motors" block list.                                                                                                                                                                                                                                                                                                                                                                                                                |
| ![](../img/snap/snap_blocks/robot_URL.png)                 | Give the URL of the robot. For internal use only.                                                                                                                                                                                                                                                                                                                                                                                                                               |
| ![](../img/snap/snap_blocks/all_recorded_moves.png)        | Give all records stored in this robot.                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ![](../img/snap/snap_blocks/get_all_behaviours.png)        | Give the list of all attached/running behaviours .                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ![](../img/snap/snap_blocks/get_all_motors.png)                          | Give all existing motors groups.                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ![](../img/snap/snap_blocks/get_function_of_behaviour.png) | Get all methods or functions which are runnable in a behavior.It is an advanced block.                                                                                                                                                                                                                                                                                                                                                                                          |
| ![](../img/snap/snap_blocks/card_is_detected.png)          | Return a boolean (true/false) depending if the selected card is detected by the camera of the robot.                                                                                                                                                                                                                                                                                                                                                                            |

<!-- TODO

## Quick examples

### Record and play back a move

You can record a movement on one motor and play it back

You can change the speed

You can record it on all motors

or just a subset of your creature


#### Record and by demonstration movement

-->