# REST API

Any [pypot.robot.robot.Robot](pypot.robot.html#pypot.robot.robot.Robot) object can be to remotely accessed and
controled through TCP network.

This can be useful to: 
- separate the low-level control running on an
embedded computer and higher-level computation on a more powerful
computer 
- control your Poppy robot from any language (C++,
javascript...) able to use tcp sockets 
- remote control your robot
without having to install all Poppy libraries

The protocol, described
[here](https://github.com/poppy-project/pypot/blob/master/REST-APIs.md),
allows the access of all the robot variables and method (including
motors and primitives) via a JSON request. Two transport methods have
been developed so far:

-   HTTP via GET and POST request (see the
    [pypot.server.httpserver.HTTPRobotServer](pypot.server.html#pypot.server.httpserver.HTTPRobotServer))
-   ZMQ socket (see the [pypot.server.zmqserver.ZMQRobotServer](pypot.server.html#pypot.server.zmqserver.ZMQRobotServer))

The [pypot.server.rest.RESTRobot](pypot.server.html#pypot.server.rest.RESTRobot) has been abstracted from the server,
so you can easily add new transport methods if needed.

> **note**
>
> A third server is available in Pypot: [pypot.server.snap.SnapRobotServer](pypot.server.html#pypot.server.snap.SnapRobotServer) allows you
> to run Snap! directly on the robot.

## ZMQ method

This method is quick and powerful but needs the pyzmq library installed.

Server-side code (launch on the robot):

    import zmq

    from  pypot.server import ZMQRobotServer

    robot = ... #create your robot from a config file or using the PoppyHumanoid lib

    server = ZMQRobotServer(robot,"0.0.0.0", 6768) 

    # We launch the server inside a thread
    threading.Thread(target=lambda: server.run()).start()
    print "ready"

Client-side code (launch on remote computer):

    import zmq

    c = zmq.Context()
    s = c.socket(zmq.REQ)
    s.connect ("tcp://poppy.local:6768") #adapt the hostname or IP to the one of your robot and the port to the one set on the server code

    #how the read a register
    req = {"robot": {"get_register_value": {"motor": "head_z", "register": "present_position"}}}
    s.send_json(req)
    answer = s.recv_json()
    print(answer)

    #how to write in a register
    req = {"robot": {"set_register_value": {"motor": "head_z", "register": "goal_position", "value": "40"}}}
    s.send_json(req)
    answer = s.recv_json()
    print(answer)

## HTTP method

More classical and easy to use. This example uses urllib, but there are
other very good Python libraries for HTTP.

To launch the HTTP server on you robot:

    poppy-services --http

the default port is 8080. You can test your connection by directly
entering the following URL in your browser:
<http://poppy.local:8080/motor/list.json>

Client-side example code (use on remote computer):

    import urllib, urllib2, json

    #make a GET request to read the names of all motors
    allmotors= urllib2.urlopen("http://poppy.local:8080/motor/list.json").read()
    print allmotors

    #transform json into Python dictionnary
    allmotors_dict = json.loads(allmotors)
    for m in allmotors_dict["motors"]:
        print m

    #make POST request to move a motor
    url = 'http://poppy.local:8080/motor/head_z/register/goal_position/value.json'
    values = json.dumps(-20)
    req = urllib2.Request(url, values)
    req.add_header("Content-Type",'application/json')
    response = urllib2.urlopen(req)
