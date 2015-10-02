# The logging system

Pypot used the Python's builtin
[logging](http://docs.python.org/2/library/logging.html) module for
logging. For details on how to use this module please refer to Python's
own documentation or the one on [django
website](https://docs.djangoproject.com/en/1.6/topics/logging/). Here,
we will only describe what pypot is logging and how it is organised. We
will also present a few examples on how to use pypot logging and parse
the information.

## Logging structure

Pypot is logging information at all different levels:

-   low-level dynamixel IO
-   motor and robot abstraction
-   within each primitive
-   each request received by the server

> **note**
>
> As you probably do not want to log everything (pypot is sending a lot
> of messages!!!), you have to select in the logging structure what is
> relevant in your program and define it in your logging configuration.

Pypot's logging naming convention is following pypot's architecture.
Here is the detail of what pypot is logging with the associated logger's
name:

-   The logger's name *pypot.dynamixel.io* is logging information
    related to opening/closing port (INFO) and each sent/received
    package (DEBUG). The communication and timeout error are also logged
    (WARNING). This logger always provides you the port name, the
    baudrate and timeout of your connection as extra information.
-   The logger *pypot.robot.motor* is logging each time a register of a
    motor is set (DEBUG). The name of the register, the name of the
    motor and the set value are given in the message.
-   *pypot.robot.config* is logging information regarding the creation
    of a robot through a config dictionary. A message is sent for each
    motor, controller and alias added (INFO). A WARNING message is also
    sent when the angle limits of a motor are changed. We provide as
    extra the entire config dictionary.
-   The logger *pypot.robot* is logging when the synchronization
    is started/stopped (INFO) and when a primitive is attached (INFO).
-   *pypot.primitive* logs a message when the primitive is
    started/stopped and paused/resumed (INFO). Each
    [pypot.primitive.primitive.LoopPrimitive.update](pypot.primitive.html#pypot.primitive.primitive.LoopPrimitive.update) of a LoopPrimitive
    is also logged (DEBUG). Each time a primitive sets a value to a
    register a message is also logged (DEBUG).
-   *pypot.primitive.manager* provides you information on how the values
    sent within primitives were combined (DEBUG).
-   *pypot.server* logs when the server is started (INFO) and each
    handled request (DEBUG).

## Using Pypot's logging

### Logging configuration

The logging configuration is a dictionnary defining what you want to
log: log level, find specific formats as timestamps... [More details on
Python's logging
doc](https://docs.python.org/2/library/logging.config.html#configuration-dictionary-schema)

As an example, let say we want to check the "real" update frequency of a
loop primitive. So we specify that we only want the logs coming from
'pypot.primitive' and the message is formatted so we only keep the
timestamp:

    LOGGING = {
        'version': 1,
        'disable_existing_loggers': True,
        'formatters': {
            'time': {
                'format': '%(asctime)s',
            },
        },
        'handlers': {
            'file': {
                'level': 'DEBUG',
                'class': 'logging.FileHandler',
                'filename': 'pypot.log',
                'formatter': 'time',
            },
        },
        'loggers': {
            'pypot.primitive': {
                'handlers': ['file', ],
                'level': 'DEBUG',
            },
        },
    }

Now we simply have to set the config to the logging library:

    logging.config.dictConfig(LOGGING)

in your code before starting your primitive and the logs will
automatically be collected. At the end of execution, they are saved in a
file name *pypot.log*, where each line correspond to a log.

Then if you want, for example, to parse the primitives timestamps logs:

    t = []

    with open('pypot.log') as f:
        for l in f.readlines():
            d = datetime.datetime.strptime('%Y-%m-%d %H:%M:%S,%f\n')
            t.append(d)

    t = numpy.array(t)
    dt = map(lambda dt: dt.total_seconds(), numpy.diff(t))
    dt = numpy.array(dt) * 1000

    print(numpy.mean(dt), numpy.std(dt))

    plot(dt)
    show()
