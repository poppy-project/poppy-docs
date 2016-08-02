# Use the HTTP API to interact with a Poppy Robot

## Introduction

Poppy robots have been developed as an open platform. Their design is based on modularity and transparency. Another key feature in this direction is to allow for open communication so they can "talk" with other devices (IoT), or other softwares and languages.

HTTP API are a great solution for this. The HTTP protocol is a standard used everywhere and can be easily accessed from any connected device and from the vast majority of existing languages.

The Poppy robots are embedding a simple webserver (based on the framework [flask](http://flask.pocoo.org)) that let you interact with the robot through HTTP requests. For instance, assuming your robot is connected to the network and uses the hostname *poppy*, if you go with your favorite webbrowser to **http://poppy.local:6969/devices/m1/registers/present_position** you should see a JSON response indicating that in our case the motor *m1* is in position 0.0.
```
{
  "register": {
    "name": "present_position",
    "value": 0.0
  }
}
```

On top of letting you retrieve current state of the robot, the HTTP API also allows you to send commands, start behaviors, etc... The entire list of existing possible requests is described in http://docs.pypot.apiary.io/ Examples of requests and responses are also given their.

The communication between Poppy robots and Snap!, the monitor or the visualisator are all done using the HTTP API.

## Start the HTTP API server

Starting from pypot>=3.0 the webserver for the HTTP API is started by default when using a Poppy creature. Except if you manually disabled it, it is launched automatically when the robot starts. It is bind to the port *6969*. If you want to manually starts it to another port (let's say *4242*), you can use the following python code:

```python
from pypot.creatures import PoppyErgoJr

jr = PoppyErgoJr(serve_http_api=True,  # True by default
                 http_api_port=4242)
```

## Simple commands examples

* To retrieve the state of a device: ```[GET] /devices/<device_name>/registers``` will give you something like:
```{
      "registers": {
        "present_position": 60.3,
        "present_speed": 1.2,
        "present_load": 55.5,
        "present_temperature": 123.4,
        "angle_limits": {
          "min": -30,
          "max": 30
        },
        "led_color": "EECC44"
      }
}
```

* To modify the present position of a motor: #TODO:

* To start a *dance* primitive: ```[GET] /primitives/dance/methods/start```

## Expose a new device or a custom primitives

The idea behind Poppy robot HTTP API is to be generic enough so all main features accessible from within your robot should also be directly accessible from the outside world.

Mechanisms are provided so when you create a new device for your Poppy robot, or write a new behavior using a primitive they will be directly accessible with the HTTP API.

For instance, let's assume you have written a primitive to make the Ergo Jr jump. In pseudo code this could look like this:

```python
from pypot.primitive import Primitive

class Jump(Primitive):
    def setup(self):
        # making the Ergo jr ready to jump
        self.speed = 0.5  # in m/s

    def run(self):
        # actually jump...

    def teardown(self):
        # rest a bit to avoid catching fire

    def get_maximum_reached_height(self):
        # return the maximum height reached by the robot
```

The basic methods and properties of your primitive will already be accessible via the HTTP API. If you attach it to the robot using the name *my_cool_jump*, you shoud see it in ```/primitives``` and you can start it via ```/primitives/my_cool_jump/methods/start```.

Now, if you want to make the custom *speed* property and the *get_maximum_reached_height* method, you simply have to add two lines to your class definition:

```python
from pypot.primitive import Primitive

class Jump(Primitive):
    properties = Primitive.properties + ['speed']
    methods = Primitive.methods + ['get_maximum_reached_height']

    def setup(self):
        # making the Ergo jr ready to jump
        self.speed = 0.5  # in m/s

    def run(self):
        # actually jump...

    def teardown(self):
        # rest a bit to avoid catching fire

    def get_maximum_reached_height(self):
        # return the maximum height reached by the robot
```

If you request ```/primitives/my_cool_jump/properties```you should also see the *speed* properties now.

Similarly, to expose registers of a device:

```python

class MyCoolHeightSensor(Sensor):
    registers = Sensor.registers + ['height']

    ...
```

## Des exemples concrets plus avancés

## Controler un robot avec un autre robot

* ça serait cool que les GET/PUT soient symétriques et qu'on puisse passer au PUT le résultat du GET simplement en transformant les present par des goal.

## Robot qui tweet et qui follow twitter

@damien
