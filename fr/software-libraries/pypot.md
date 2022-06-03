# Pypot ⚙️ A Python library for Dynamixel motor control 

Pypot is a cross-platform Python library making it easy and fast to control custom robots based on multiple models of Dynamixel motors. Use Pypot to:

* control Robotis motors through USB2Dynamixel, USB2AX or [Pixl board for Raspberry Pi](https://github.com/poppy-project/pixl) FTDI devices,
* define kinematic chains of a custom robot and control it through high-level commands (Forward & Inverse Kinematics),
* define primitives (motions applying to motor groups) and easily combine them to create custom complex behaviors (Robot dance, arm shaking, writing with a pen...).
* define sensor access and processing (QRCode detection, force sensors, RGB-D, ...)

Pypot is also compatible with the [CoppeliaSim simulator](http://www.coppeliarobotics.com) (formerly V-REP), embeds a [REST API](https://docs.poppy-project.org/en/programming/rest.html) for Web-based control, and supports visual programming via [Scratch](https://docs.poppy-project.org/en/getting-started/program-the-robot.html#using-scratch) and [Snap](https://docs.poppy-project.org/en/getting-started/program-the-robot.html#using-snap).

## 🔌 Compatible hardware

**Compatible motors:** MX-106, MX-64, MX-28, MX-12, AX-12, AX-18, RX-24, RX-28, RX-64, XL-320, SR-RH4D, EX-106. Derivated versions are also supported (e.g. MX-28AT, MX-28R, MX-28T, ...). Both protocols v1 and v2 are supported but v2 is used only for XL-320. Use [Herborist](https://github.com/poppy-project/herborist#herborist) to help detect IDs and baudrates of motors.

**Compatible sensors:** Kinect 1, QRCode from RGB camera, sonar, micro-switch from Raspberry Pi GPIO, digital or analog sensor connected to Arduino

**Compatible interpreters:** Python 3.6, 3.7, 3.8, 3.9

Other models of motors and sensors can be integrated with little effort and time. Other programming languages may be connected through the REST API.

## 💻 Installation

If you are using a Poppy robot embedding a Raspberry Pi, Pypot is already shipped with it. For custom robots, just type ⌨️ `pip install pypot` in your system terminal! 

If you intend to modify or add features to Pypot, create a virtual environment and install it from sources instead:
```bash
git clone https://github.com/poppy-project/pypot
cd pypot/pypot
pip install .
```

Additional drivers may be needed for USB2serial, depending of your OS. Check here:
- [USB2AX](http://www.xevelabs.com/doku.php?id=product:usb2ax:quickstart) - this device is designed to manage TTL communication only
- [USB2Dynamixel](https://emanual.robotis.com/docs/en/parts/interface/usb2dynamixel/) - for both TTL and RS485 communication
- [Pixl board](https://github.com/poppy-project/pixl) for RaspberryPi
- [U2D2](https://emanual.robotis.com/docs/en/parts/interface/u2d2/) - for both TTL and RS485 communication (**note:** U2D2 only supports `bulk_read` operations, make sure you set `sync_read=false`)

## Usage

Pypot provides two exclusive APIs to take control over your motors:
* Use the **high-level API** if your motors are arranged as kinematic chain(s) e.g. a "robot"
* Use the **low-level API** if your are controlling several motors not being arranged as a single robot

If you do not know what API is best for you, use the consider starting with the low-level API (unless if you are controlling Pypot robots that are already instanciated with the high-level API).

| Pypot features                                          | Low level | High level|
|:-------------------------------------------------------:|:---------:|:---------:|
| Scan the motor bus                                      |    Yes    |    Yes    |
| Control motors according to their ID                    |    Yes    |     -     |
| Control motors according to their name                  |     -     |    Yes    |
| Control motor compliance, position or speed targets     |    Yes    |    Yes    |
| Manual access to Dynamixel registers                    |    Yes    |     -     |
| Record and replay trajectories                          |     -     |    Yes    |
| Implement motor behaviours (primitives)                 |     -     |    Yes    |
| Program in Python                                       |    Yes    |    Yes    |
| Program in Scratch or Snap visual programming languages |     -     |    Yes    |
| Control a simulated robot in Coppelia Sim               |     -     |    Yes    |

## Low-level API: Control motors individually

The low-level API almost directly encapsulates the communication protocol used by dynamixel motors. This protocol can be used to access any register of these motors. The `DxlIO` class is used to handle the communication with a particular port.

More precisely, this class can be used to:

- open/close the communication
- discover motors (ping or scan)
- read and write motor commands

Here is a quickstart that scans the motor bus connected on `/dev/USB0` (only for Linux), displays the current angular position of all the found motors, and move them to their initiale angular position (0 degree):

```python
with DxlIO('/dev/USB0') as dxl_io:
    motor_IDs = dxl_io.scan()
    num_motors = len(motor_IDs)
    print("Found", num_motors, "motors with current angles",  dxl_io.get_present_position(motor_IDs))
    dxl_io.set_goal_position(dict(zip(motor_IDs, num_motors*[0])))
```

> **Caution** for `XL-320` motors, and for other models that have been setup for using Robotis [protocol v2](https://emanual.robotis.com/docs/en/dxl/protocol2/), replace the `DxlIO` class here above by `Dxl320IO`. The `DxlIO` class is only intended for motors with [protocol v1](https://emanual.robotis.com/docs/en/dxl/protocol1/).

> **Caution** `/dev/ttyUSB0` here above is only valid is some situations (Linux). If this port is not found use `pypot.dynamixel.get_available_ports()` to get the port name on your computer.

The above piece of code will work only if your motors are connected connected to your computer though a FTDI device (either USB2AX or or USB2Dynamixel or Pixl board...) and powered with a 12V power supply.

### Find motors

Use `scan()` to search for all connected motors on the motor bus. It will return the list of the integer IDs of the found motors:
```python
dxl_io.scan()
>>> [4, 23, 24, 25]
```
Scanning may take severl dozens of seconds since it waits for all possible motors IDs to answer. Pass a list of IDs such as `scan([12, 15, 20, 28, 54])` in order to scan only the specified IDs, which will be way faster.

> **Caution** motor IDs much be unique on the motor bus. If your motors are brand new they use ID=1 and you would not be able to communicate with all of them at once before you configure them with a different ID each (see below).

### Get current angular positions

pass a list of motor IDs to `get_present_position()` in order to retrieve the current angular position of all these motors at once:
```python
ids = (4, 8)
dxl_io.get_present_position(ids)
>>> (67.8, 0.0)
```
### Set goal positions

To move your motors, provide a dictionary that associates for each ID, its desired angular position. With the following code, motor 4 will be moved to 0 degree and motor 7 will be moved to -90 degrees:

```python
dxl_io.set_goal_position({4: 0, 7: -90})
```

> **Caution** The motors are handled in degrees where 0 is considered the central point of the motor turn. For the MX motors, the end points are -180° and 180°. For the AX and RX motors, these end points are -150° to 150°.

### More complete example using the low-level API

In this example we are going to apply a sinusoid motion on two motors.

```python
import itertools
import numpy
import time

import pypot.dynamixel

AMP = 30
FREQ = 0.5

if __name__ == '__main__':
    ports = pypot.dynamixel.get_available_ports()
    print('available ports:', ports)

    if not ports:
        raise IOError('No port available.')

    port = ports[0]
    print('Using the first on the list', port)

    dxl_io = pypot.dynamixel.DxlIO(port)
    print('Connected!')

    found_ids = dxl_io.scan()
    print('Found ids:', found_ids)

    if len(found_ids) < 2:
        raise IOError('You should connect at least two motors on the bus for this test.')

    ids = found_ids[:2]

    dxl_io.enable_torque(ids)

    speed = dict(zip(ids, itertools.repeat(200)))
    dxl_io.set_moving_speed(speed)
    pos = dict(zip(ids, itertools.repeat(0)))
    dxl_io.set_goal_position(pos)


    t0 = time.time()
    while True:
        t = time.time()
        if (t - t0) > 5:
            break

        pos = AMP * numpy.sin(2 * numpy.pi * FREQ * t)
        dxl_io.set_goal_position(dict(zip(ids, itertools.repeat(pos))))

        time.sleep(0.02)
```

Thanks to pypot, you can access all registers of your motors using the same syntax (e.g. `get_present_speed()`, `set_max_torque()`, `get_pid_gain()`). Some shortcuts have been provided to make the code more readable (e.g. `enable_torque()` instead of `set_torque_enabled`). All the getter functions takes a list of ids as argument and the setter takes a dictionary of `(id: value)` pairs. 

## High-level API: Control robots 

This usecase is intended for users controlling several motors assembled as kinematic chain(s), what we could name a "robot".
It requires the writing of a configuration file that describes the robot. Inspire youself from [ergo_jr.json](https://github.com/poppy-project/poppy-ergo-jr/blob/master/software/poppy_ergo_jr/configuration/poppy_ergo_jr.json), [poppy_torso.json](https://github.com/poppy-project/poppy-torso/blob/master/software/poppy_torso/configuration/poppy_torso.json) and [poppy_humanoid.json](https://github.com/poppy-project/poppy-humanoid/blob/master/software/poppy_humanoid/configuration/poppy_humanoid.json).

Then load a configuration file to create a `Robot` instance:
```python
robot = pypot.robot.from_config("/home/poppy/ergo_jr.json")
```

Now, we are going to put the robot in its initial position:

```python
for m in ergo_robot.motors:
    m.compliant = False

    # Go to the position 0 within 2 seconds.
    # Note that the position is expressed in degrees.
    m.goto_position(0, 2)
```

The robot should raise and smoothly go to its base position. Now, we are going to move it to a more stable position. We will use it as a rest position for our dance:

```python
rest_pos = {'base_tilt_lower': 45,
            'base_tilt_upper': -45,
            'head_tilt_lower': 30,
            'head_tilt_upper': -30}

# You can directly set new positions to motors by providing
# the Robot goto_position method with a dictionary such as
# {motor_name: position, motor_name: position...}
ergo_robot.goto_position(rest_pos, duration=1, wait=True)
```

We will now create a very simple dance just by applying two sinus with opposite phases on the base and head motors of the robot:

```python
import numpy
import time

amp = 30
freq = 0.5

# As you can notice, property to access the motors defined
# in the configuration file are automatically created.
ergo_robot.base_pan.moving_speed = 0 # 0 corresponds to the max speed
ergo_robot.head_pan.moving_speed = 0

t0 = time.time()
while True:
    t = time.time() - t0
    if t > 10:
        break

    x = amp * numpy.sin(2 * numpy.pi * freq * t)
    ergo_robot.base_pan.goal_position = x
    ergo_robot.head_pan.goal_position = -x

    time.sleep(0.02)

Your robot should start dancing for ten seconds. Now, that you have seen the very basic things that you can do with pypot. It is time to jump on the tutorial to get a complete overview of the possibility.
```

## Previous version of this documentation
Find it at [poppy-project.github.io/pypot/](http://poppy-project.github.io/pypot/)