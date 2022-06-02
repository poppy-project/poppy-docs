# Edit the robot look or behavour

The behaviour of your robot is described in a configuration file that tells:
* its list of actuators (motors)
* its list of sensors

## Open and edit the configuration file

If you need to customize your robot (e.g. add a new motor) you will need to edit this configuraiton file so that Pypot knows your change and allows you to take control over your new component.

This is an advanced technique and may break your robot software, be careful (fortunately you can always go back).

First open the configuration file, according to your situation:

### Situation 1: Your robot is running a Raspberry Pi
Connect to your robot through SSH and open the configuration file of your robot:

```bash
ssh poppy@poppy.local    # Use password "poppy"
nano ~/dev/poppy_ergo_jr/poppy_ergo_jr.py
```

You can now edit it (see below).

### Situation 2: Your robot is connected to your computer in USB
In that case your own computer is driving the motors, in that case you can either:
* provide a new configuration file by using `r = pypot.from_json("path/to/my/configuration/file.json")` instead of `r = PoppyTorso()` (only for Python users)
* edit the configuration file of the Python library of your robot. This path is different according to the way you installed the software. Some Linux users may find it in `~/.local/lib/python3.9/site-packages/poppy_ergo_jr/configuration/poppy_ergo_jr.json`

## Some usecases
### Add a new motor

Add the following fields to your configuration file and customize the name, model, id, and limits of your added motor:

```json
  "motors": {
    "my_custom_motor": {
      "offset": 0.0,
      "type": "XL-320",
      "id": 90,
      "angle_limit": [
        -150.0,
        150.0
      ],
      "orientation": "direct"
    },
    "m1": {
      [...]
```

Supported motor models are MX-106, MX-64, MX-28, MX-12, AX-12, AX-18, RX-24, RX-28, RX-64, XL-320, SR-RH4D, EX-106. Their derivates (e.g. MX-28AT) are also supported, but in that case you must specify the regular motor name (e.g. MX-28).

Make sure you do not make any syntax error and save your file. Then your new motor will be controlled as any other motor in pypot.

### Add a sensor

Here, we are showing how to enable **human face detection** via the primitive `face_detector` that is already implemented in your robot but not enabled by default (because it uses CPU):

```json
  "sensors": {
    "face_detector": {
      "type": "FaceDetector",
      "cameras": ["camera"],
      "freq": 1.0,
      "cascade": "/home/poppy/pyenv/lib/python3.7/site-packages/cv2/data/haarcascade_frontalface_alt.xml",
      "need_robot" : true
      },
    "marker_detector": {
      [..]
```

Then restart your robot. The primitive is now usable in Python via `poppy.face_detector` like any other primitive.



