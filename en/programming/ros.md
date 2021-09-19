# Program Poppy robot with ROS

ROS is a toolbox for creating robots, very popular in academia. It is designed for advanced users.

<img src="https://raw.githubusercontent.com/poppy-project/poppy_ergo_jr_description/master/doc/img/rviz.png" alt="Poppy in ROS Noetic" />

## Compatibility of robot and ROS versions

In order to use your Poppy robot with ROS you need **ROS 1 Noetic** with **Ubuntu 20.04**. Version ROS 2 supports Windows ans MacOS, but Poppy is not yet compatible.

Only Poppy Ergo Jr has a total compatibility with ROS from software v4.0.0. Check your software version number in the top right of your robot's homepage [http://poppy.local](http://poppy.local).

For Torso and Humanoid, some [packages](https://poppy.discourse.group/t/support-of-ros-available-for-poppy-ergo-jr/) are available though, for advanced users.


## Installation 
### 1. Install ROS Noetic

Please refer to [the installing procecure of ROS Noetic](https://wiki.ros.org/noetic/Installation/Ubuntu). The procedure is successful when typing command `roscore` starts a ROS master sucessfully, that you can stop by pressing Ctrl+C.

### 2. Install MoveIt 1.0

MoveIt is a toolbox for ROS allowing to facilitate the creation of manipulator robots. It has tools for trajectory planification, 3D perception, kinematics and control.

Please refer to [the installing procedure of MoveIt](https://moveit.ros.org/install/). 

### 3. Download the integration of Poppy robots in ROS

```bash
cd ~/catkin_ws/src
git clone https://github.com/poppy-project/poppy_ergo_jr_description/
git clone https://github.com/poppy-project/poppy_ergo_jr_moveit_config
git clone https://github.com/poppy-project/poppy_controllers
cd ~/catkin_ws && catkin_make
source ~/catkin_ws/devel/setup.bash
```

## Use Poppy with ROS
### Overview of the ROS API for Poppy

The Poppy robot implements the following ROS topics and services:

* The topic `/joint_states` publishes the current joint angles and speeds
* The action server `/follow_joint_trajectory` allows to control the robot by executing trajectories of type `trajectory_msgs/JointTrajectory`
* The service `/set_compliant` allows to en(dis)able the robot compliance
* The service `/get_image` allows to grab an image from the camera
* The service `/close_gripper` allows to close or open the gripper (motor m6 of the Ergo Jr)
* The parameters `/gripper/angles/aperture` and `/gripper/angles/closure` define the range of aperture of the gripper (in degrees from about -20° to +30°)
* The parameter `/gripper/speed` defines the opening/closing speed from 0.05 (slowest) to 1 (fastest)

### Start the robot controllers (aka Poppy ROS services)

Connect to the robot's homepage [http://poppy.local](http://poppy.local) and select **Programming** and then **ROS**:

<img src="/img/4.0.0/ros-start.png" alt="Start ROS services" />

This button sarts ROS controllers on the robot itself. In that case, the robot will be the ROS master and you will need the following environment variable on your workstation:

```bash
export ROS_MASTER_URI=http://poppy.local:11311
# change poppy.local for the name of your robot if you changed it
``` 

**Note** : In the particular case where you would need another ROS master or you would need peculiar launchfile options, do not use the "STart ROS" button and check that the robot API is stopped. Then connect to the robot with ssh and launch the launchfile manually as below:
```
ssh poppy@poppy.local                            # password poppy
export ROS_MASTER_URI=http://poppy.local:11311   # Set your ROS master
roslaunch poppy_controllers control.launch       # It is the regular launchfile started by the button "Start ROS"
```


###  Trigger compliance, an image shot, or the gripper closure via a service call

Activating the compliance, an image shot, or the gripper closure and opening are trigger via a service call, either from a Python node, or from command line as presented below:

```bash
rosservice call /set_compliant "data: true" 

# The service must return a success message:
#   success: True
#   message: "Robot compliance has been enabled"
```

The following piece of Python code (in a ROS node) allows to grab an image from the Poppy's camera and convert it to OpenCV's image format:

```python
import cv2
from poppy_controllers.srv import GetImage
from cv_bridge import CvBridge

get_image = rospy.ServiceProxy("get_image", GetImage)
response = get_image()
bridge = CvBridge()
image = bridge.imgmsg_to_cv2(response.image)
cv2.imshow("Poppy camera", image)
cv2.waitKey(200)
```
**Warning**: Make sure you control if the image has a correct size before using it. A fault camera would return an iamge with no dimension.

### Example: Plan trajectories with MoveIt

MoveIt allows to generate trajectories by avoiding obstacles (either hardcoded obstacles or coming from a 3D camera) 

<img src="https://github.com/poppy-project/poppy_ergo_jr_moveit_config/raw/36ffb295cf115a080b81aa6475ae512e88c9957a/doc/img/MoveIt.gif" alt="Poppy Ergo Jr in MoveIt" />

### Start Moveit with a simulated robot

Start MoveIt with parameter `fake_execution` to true to simulate a robot:
```bash
roslaunch poppy_ergo_jr_moveit_config demo.launch fake_execution:=true gripper:=true
```

Or with the lamp end-effector:
```bash
roslaunch poppy_ergo_jr_moveit_config demo.launch fake_execution:=true lamp:=true
```

### Start MoveIt with a tangible robot

With a tangible robot, first start the Poppy controllers as shown before, and then on your workstation start MoveIt with parameter `fake_execution` to false:
```bash
roslaunch poppy_ergo_jr_moveit_config demo.launch fake_execution:=false lamp:=true
```
The blue ball of the end effector allows to set a cartesian value to reach, and the "Plan and Execute" button triggers a collision-free trajectory computation and executes it on the robot.


### Record and replay feature
To record a trajectory, it is handy to enable compliance and manipulate the robot with your hands: 
```bash
rosservice call /set_compliant "data: true" 
```
However, it is also totally fine to record a trajectory played by MoveIt or any other way.

Then, open a Jupyter notebook or an `ipython` interactive interpreter and use the following functions to record, for instance, a 5sec trajectory:
```python
import rospy
from poppy_ros_control.recorder import Recorder

rospy.init_node("trajectory_recorder")
r = Recorder()
r.start_recording()

# Move your robot with your hands in compliant mode to record its trajectory
rospy.sleep(5)

r.stop_and_save("my_motion_name")
```

Trajectories are stored in JSON files in the `poppy_controllers/data` directory.

Later, you can replay them this way:


```python
import rospy
from poppy_ros_control.recorder import Player
from moveit_commander.move_group import MoveGroupCommander

rospy.init_node("trajectory_player")
commander = MoveGroupCommander("arm_and_finger")
player = Player()

# This returns a moveit_msgs/RobotTrajectory object representing the recorded trajectory
my_motion = player.load("my_motion_name")

# Go to the start position before replaying the motion
commander.set_joint_value_target(my_motion.joint_trajectory.points[0].positions)
commander.go()

# Replay the exact same motion
commander.execute(my_motion)
```

## Troubleshooting
#### `Invalid Trajectory: start point deviates from current robot state more than 0.2`
You're probably trying to replay a trajectory while your robot didn't reach the starting point first. Make sure you reach it with `set_joint_value_target`.

#### `ABORTED: Solution found but controller failed during execution`
Is your robot compliance disabled? No trajectory can be executed with compliance.

#### Robot makes abrupt trajectories
* If you are replaying a recorded trajectory, make you you first join its initial point before starting replay: use `set_joint_value_target` first before `execute`
* Poppy Ergo Jr's motors have a range of [-170°, +170°] = [-0.94 rad, +0.94 rad], if your trajectories don't fit this interval, you will likely have erratic movements, thus:
* keep away from U-turns (~ 180° = 3.14 rad) for each motor when recording a trajectory
* make sure your motors are not mounted backwards : `set_joint_value_target([0, 0, 0, 0, 0, 0])` must bring your robot in that exact configuration:

<img src="https://camo.githubusercontent.com/bda29f64b2e37ca0471eefff12f7981300e167c8/687474703a2f2f646f63732e706f7070792d70726f6a6563742e6f72672f656e2f617373656d626c792d6775696465732f6572676f2d6a722f696d672f6572676f5f746f6f6c732e676966" alt="Expected configuration of Poppy Ergo Jr with 0 target angles" />




