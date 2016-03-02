# Programming Poppy robots using Snap_!_

Snap_!_ is a blocks-based graphical programming language that allows users to create interactive animations, games, and more, while learning about mathematical and computational ideas.

Snap_!_ was inspired by Scratch (a project of
the Lifelong Kindergarten Group at the MIT Media Lab), but also targets both novice and more advanced users by including and expanding Scratch's features.

Snap_!_ is open-source and it is entirely written in javascript, you can use it from the [official website](http://snap.berkeley.edu/snapsource/snap.html) but you can also use a [copy of the website](https://github.com/jmoenig/Snap--Build-Your-Own-Blocks/archive/v4.0.2.zip) in your personal computer and open the `snap.html` file in your browser.

**Note: Even if Snap_!_ use JavaScript and HTML5 which are browser independent technologies, opening blocks for Poppy robots in Snap_!_ is far faster in a web browser based on Webkit engine. We strongly recommend you to use [Chromium Browser](http://chromium.woolyss.com/)(which is very similar to Chrome without tracking tools), or Google Chrome.**

## Introduction to Snap_!_ programming

This chapter will focus on things necessary to understand in Snap_!_ for using Poppy creatures.

If you want a well designed online lesson on Snap_!_ we strongly encourage you to look at the ["Beauty and Joy of Computing"](http://bjc.edc.org/bjc-r/course/bjc4nyc_2015-2016.html) (BJC) course made by the University of Berkeley for New York high school students.

Some of the snapshots and concepts of BJC have been used for writing this chapter.

### Connect your robot to Snap_!_

#### With a simulated robot with V-REP

#### With a tangible robot

Open the web interface of your robot in your web browser.
Click on the "Start Snap_!_ link"; it will start the python REST API to the robot and open the Snap_!_ interface.

Click on the file icon -> Examples -> click on "pypot snap blocks" and the "open" button.



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

You will soon receive a validation email with a random password.  
You can now log in with your username and password.

![Login1](../img/snap/snap_login1.png)

If you use your personal computer, remember to check the "stay signed in on this computer [...]" checkbox.

![Login2](../img/snap/snap_login2.png)

After logging in account, you are free to change your password: click on the cloud button -> "Change Password".

![Create account](../img/snap/logout-menu.png)

##### Share your Snap_!_ project

The big advantage of using Snap_!_ Cloud is the ability to share a copy of your project with anyone.
To share a Snap_!_ project, you first need to be logged in Snap_!_ Cloud and having your current project saved ("save" or "save as"). Go to the "open" menu:

![Open menu](../img/snap/snap_open.png)

In the cloud section, select the project you want to share and click on "Share" button.

![Share](../img/snap/snap_cloud_3.png)

**Here is the trick step:** to see the share link, you have to click on the "Open" button.

![Open share](../img/snap/snap_cloud_4.png)

And this will re-open your project with the public sharing URL.

![Sharing URL](../img/snap/snap_cloud_5.png)

You can copy and paste the URL and share it by the way you want to your friends or to the Poppy community with the forum [forum.poppy-project.org](https://forum.poppy-project.org/).

When you open a share project, the project is automatically opened in full screen on the sprite zone. To quit the full screen you have to click on the double arrow at the top of the snapshot below.
![Sharing URL](../img/snap/snap_share_full_screen.png)

#### Export/Import your Snap_!_ project

If you have a limited access to internet and you want to share project with other people, the best way is to export it:
![Export section](../img/snap/snap_cloud_5.png)
A new tab in your web browser will be opened with an XML file like the picture below.
![Export section](../img/snap/snap_xml_save_as.png)
This file describe all your Snap_!_ project in a a simple file. It's not made to be human readable so don't be afraid, you just have to save it on your computer. For that, do a right click, chose "save as" and a proper name and location on you computer for this project.

If you want to import a previously exported project, you simply have to click on the import section of the file icon.
![import section](../img/snap/snap_import.png)

### Search Poppy blocks

Every Poppy block in Snap_!_ begins by a robot icon. So you can search all of them by the robot keyword. To search a specific block, do a right click on the block area, or use the keyboard shortcut CTRL+F.
![find blocks](../img/snap/find_blocks.png)
![find blocks](../img/snap/find_blocks2.png)

### First steps with Snap_!_ and a Poppy creature

#### Test the connection between Snap_!_ and your creature

##### If you are using a tangible robot

First, you must be connected to the same network LAN area than your robot (e.g. on the same router).

You have to go on the web homage of your robot with its URL. You can use its IP address (for example http://192.168.1.42) if you have a way to know it or its hostname like http://poppy.local. To find its IP address you can see it in your router administration web page, or with a network scanner like ["Fing"](http://www.overlooksoft.com/download) (for smartphone and desktop OS). To use directly its hostname http://poppy.local you must have a [Zeroconf](https://fr.wikipedia.org/wiki/Zeroconf) software installed on your computer, install "Bonjour print services for Windows" if you are running a Windows OS.

The home page of your poppy creature should look like the snapshot below:
![find blocks](../img/snap/homepage.png)

Click on the "Start Snap!" link to open the Snap_!_ interface at start the connection with the Poppy robot.

Poppy special blocks are stored in the Examples. Go to "file" icon -> open -> Examples -> click on "Poppy blocks". It may take some time to load the blocks (~5-15 seconds), be patient.

##### If you are using the V-REP simulator

Open V-REP, open a terminal (called *Command Prompt* on Windows), type and press Enter to execute the command below:

`poppy-services --snap --vrep poppy-torso`

*Substitute 'poppy-torso' with 'poppy-humanoid' or 'poppy-ergojr' to launch respectively a Poppy Humanoid or a Poppy Ergo Jr*.

If you have issues, look at the <!-- TODO --> section to see have more detailed informations.

After having executed this command a tab in your web browser should have be opened to Snap_!_ have loaded Poppy blocks.

#### Network

First test your connection with the (tangible or simulated) robot with the "test connection" block.
![test connection](../img/snap/test_connection.png).
if the block answer is "You may have connection troubles", your "host" variable inside the Snap_!_ project is probably wrong. The host variable must be the IP or the hostname+".local" of your robot ; if you're using V-REP localhost is used to point to your own computer.

![test connection3](../img/snap/test_connection3.png).

### Build your own blocks!

The functionality to build your own block was the first difference between Scratch and Snap_!_ (now it's also possible to make custom blocks in Scratch)!
<!-- TODO -->

## Description of Poppy blocks
|        |   |   |   |   |
|---|---|---|---|---|
|   |   |   |   |   |
|   |   |   |   |   |
|   |   |   |   |   |

## Quick examples

### Record and play back a move

You can record a movement on one motor and play it back

You can change the speed

You can record it on all motors

or just a subset of your creature


#### Record and by demonstration movement
