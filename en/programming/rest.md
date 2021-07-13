# Pypot's REST API

> **Caution** REST API has been updated in v4.0.0. This page presents the documentation of the v4.0.0 API.

The Pypot API is organized around [REST](https://en.wikipedia.org/wiki/Representational_state_transfer "Representational state transfer"). Our API has predictable resource-oriented URLs, accepts form-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes.

# Errors

Pypot uses conventional HTTP response codes to indicate the success or failure of an API request. In general: Codes in the `2xx` range indicate success. Codes in the `4xx` range indicate an error that failed given the information provided (e.g., a required parameter was omitted, a charge failed, etc.). Codes in the `5xx` range indicate an error with Poppy's servers (these are rare).

| Code | Meaning |
| ----:|:------- |
| 200 - OK | Everything worked as expected. |
| 202 - Accepted | The request has been accepted for processing, but the processing has not been completed. |
| 204 - No Content | The server has fulfilled the request but it does not return anything. |
| 404 - Not Found | The requested resource doesn't exist. |
| 500, 502, 503, 504 - Server Errors | Something went wrong on Poppy's end. (These are rare.) |

# Endpoints

## 🔌 Miscellaneous

#### 📕 Summary

```nginx
GET /
GET /robot.json
GET /ip.json
```
- - -

### Getting all endpoints

```nginx
GET /
```

<b>Description</b>

Gives all endpoints of the REST API in an HTML format

<b>cURL command</b>

`curl http://poppy.local:8080/`


<b>Returned value</b>

```
All url paths availables:

Get method url:
/robot.json
/ip.json
/motors/list.json
/motors/aliases/list.json
/motors/<alias>/list.json
/motors/<motor_name>/registers/list.json
/motors/<motor_name>/registers/<register_name>/value.json
/motors/registers/<register_name>/list.json
/sensors/list.json<br>/sensors/<sensor_name>/registers/list.json
/sensors/<sensor_name>/registers/<register_name>/value.json
/records/list.json
/records/<move_name>/value.json
/primitives/list.json
/primitives/running/list.json
/primitives/<primitive_name>/start.json
/primitives/<primitive_name>/stop.json
/primitives/<primitive_name>/pause.json
/primitives/<primitive_name>/resume.json
/primitives/<primitive_name>/properties/list.json
/primitives/<primitive_name>/properties/<prop>/value.json
/primitives/<primitive_name>/methods/list.json

Post method url:
/motors/<motor_name>/registers/<register_name>/value.json
/motors/<motor_name>/goto.json
/motors/goto.json
/sensors/<sensor_name>/registers/<register_name>/value.json
/records/<move_name>/record.json
/records/<move_name>/save.json
/records/<move_name>/play.json
/records/<move_name>/stop.json
/records/<move_name>/delete.json
/primitives/<primitive_name>/properties/<prop>/value.json
/primitives/<primitive_name>/methods/<method_name>/args.json
```


- - -

### Getting all robot values

```nginx
GET /robot.json
```

<b>Description</b>

Get all robot values, such as motors attribute values, or primitive methods.

<b>cURL command</b>

`curl http://poppy.local:8080/robot.json`

<b>Returned value</b>

On a Poppy Torso:
```json
{
    "motors":
    [
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": 0.0,
            "compliant": true,
            "angle_limit":
            [
                -79.96,
                80.04
            ],
            "id": 33,
            "name": "abs_z",
            "model": "MX-28",
            "present_position": 49.27,
            "goal_position": 52.18,
            "present_speed": 0.0,
            "moving_speed": 0.0,
            "present_load": 0.0,
            "torque_limit": 100.0,
            "lower_limit": -79.96,
            "upper_limit": 80.04,
            "present_voltage": 11.3,
            "present_temperature": 35.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": -0.0,
            "compliant": true,
            "angle_limit":
            [
                46.02,
                -22.99
            ],
            "id": 34,
            "name": "bust_y",
            "model": "MX-28",
            "present_position": 69.58,
            "goal_position": 69.58,
            "present_speed": -0.0,
            "moving_speed": -0.0,
            "present_load": -0.0,
            "torque_limit": 100.0,
            "lower_limit": 46.02,
            "upper_limit": -22.99,
            "present_voltage": 11.0,
            "present_temperature": 33.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": 0.0,
            "compliant": true,
            "angle_limit":
            [
                39.96,
                -40.04
            ],
            "id": 35,
            "name": "bust_x",
            "model": "MX-28",
            "present_position": -5.23,
            "goal_position": -5.23,
            "present_speed": -0.0,
            "moving_speed": -0.0,
            "present_load": -0.0,
            "torque_limit": 100.0,
            "lower_limit": 39.96,
            "upper_limit": -40.04,
            "present_voltage": 11.200000000000001,
            "present_temperature": 32.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "compliance_margin",
                "compliance_slope"
            ],
            "goal_speed": -0.0,
            "compliant": true,
            "angle_limit":
            [
                -99.85,
                100.15
            ],
            "id": 36,
            "name": "head_z",
            "model": "AX-12",
            "present_position": -150.0,
            "goal_position": -150.0,
            "present_speed": 0.0,
            "moving_speed": 0.0,
            "present_load": 0.0,
            "torque_limit": 100.0,
            "lower_limit": -99.85,
            "upper_limit": 100.15,
            "present_voltage": 11.4,
            "present_temperature": 32.0,
            "compliance_margin":
            [
                1,
                1
            ],
            "compliance_slope":
            [
                32,
                32
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "compliance_margin",
                "compliance_slope"
            ],
            "goal_speed": 0.0,
            "compliant": true,
            "angle_limit":
            [
                20.03,
                -28.060000000000002
            ],
            "id": 37,
            "name": "head_y",
            "model": "AX-12",
            "present_position": -11.06,
            "goal_position": -11.06,
            "present_speed": -0.0,
            "moving_speed": -0.0,
            "present_load": -0.0,
            "torque_limit": 100.0,
            "lower_limit": 20.03,
            "upper_limit": -28.060000000000002,
            "present_voltage": 11.4,
            "present_temperature": 32.0,
            "compliance_margin":
            [
                1,
                1
            ],
            "compliance_slope":
            [
                32,
                32
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": -0.0,
            "compliant": true,
            "angle_limit":
            [
                -209.95999999999998,
                65.03
            ],
            "id": 41,
            "name": "l_shoulder_y",
            "model": "MX-28",
            "present_position": -75.27,
            "goal_position": -74.66,
            "present_speed": 0.0,
            "moving_speed": 0.0,
            "present_load": 0.0,
            "torque_limit": 100.0,
            "lower_limit": -209.95999999999998,
            "upper_limit": 65.03,
            "present_voltage": 11.100000000000001,
            "present_temperature": 30.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": -0.0,
            "compliant": true,
            "angle_limit":
            [
                195.01,
                -20.019999999999996
            ],
            "id": 42,
            "name": "l_shoulder_x",
            "model": "MX-28",
            "present_position": 4.510000000000005,
            "goal_position": 4.150000000000006,
            "present_speed": -0.0,
            "moving_speed": -0.0,
            "present_load": -0.0,
            "torque_limit": 100.0,
            "lower_limit": 195.01,
            "upper_limit": -20.019999999999996,
            "present_voltage": 11.3,
            "present_temperature": 30.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": 0.0,
            "compliant": true,
            "angle_limit":
            [
                89.98,
                -89.98
            ],
            "id": 43,
            "name": "l_arm_z",
            "model": "MX-28",
            "present_position": -24.48,
            "goal_position": -24.75,
            "present_speed": -0.0,
            "moving_speed": -0.0,
            "present_load": -0.0,
            "torque_limit": 100.0,
            "lower_limit": 89.98,
            "upper_limit": -89.98,
            "present_voltage": 11.200000000000001,
            "present_temperature": 31.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": 0.0,
            "compliant": true,
            "angle_limit":
            [
                -50.0,
                90.04
            ],
            "id": 44,
            "name": "l_elbow_y",
            "model": "MX-28",
            "present_position": 5.299999999999997,
            "goal_position": 5.209999999999994,
            "present_speed": 0.0,
            "moving_speed": 0.0,
            "present_load": 0.0,
            "torque_limit": 100.0,
            "lower_limit": -50.0,
            "upper_limit": 90.04,
            "present_voltage": 11.3,
            "present_temperature": 30.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": 0.0,
            "compliant": true,
            "angle_limit":
            [
                65.03,
                -210.04000000000002
            ],
            "id": 51,
            "name": "r_shoulder_y",
            "model": "MX-28",
            "present_position": -64.9,
            "goal_position": -72.46000000000001,
            "present_speed": -0.0,
            "moving_speed": -0.0,
            "present_load": -0.0,
            "torque_limit": 100.0,
            "lower_limit": 65.03,
            "upper_limit": -210.04000000000002,
            "present_voltage": 11.600000000000001,
            "present_temperature": 32.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": -0.0,
            "compliant": true,
            "angle_limit":
            [
                20.019999999999996,
                -195.01
            ],
            "id": 52,
            "name": "r_shoulder_x",
            "model": "MX-28",
            "present_position": 1.5600000000000023,
            "goal_position": 2.530000000000001,
            "present_speed": -0.0,
            "moving_speed": -0.0,
            "present_load": -0.0,
            "torque_limit": 100.0,
            "lower_limit": 20.019999999999996,
            "upper_limit": -195.01,
            "present_voltage": 11.200000000000001,
            "present_temperature": 30.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": 0.0,
            "compliant": true,
            "angle_limit":
            [
                89.98,
                -89.98
            ],
            "id": 53,
            "name": "r_arm_z",
            "model": "MX-28",
            "present_position": -31.34,
            "goal_position": -30.9,
            "present_speed": -0.0,
            "moving_speed": -0.0,
            "present_load": -0.0,
            "torque_limit": 100.0,
            "lower_limit": 89.98,
            "upper_limit": -89.98,
            "present_voltage": 11.100000000000001,
            "present_temperature": 30.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        },
        {
            "registers":
            [
                "registers",
                "goal_speed",
                "compliant",
                "safe_compliant",
                "angle_limit",
                "id",
                "name",
                "model",
                "present_position",
                "goal_position",
                "present_speed",
                "moving_speed",
                "present_load",
                "torque_limit",
                "lower_limit",
                "upper_limit",
                "present_voltage",
                "present_temperature",
                "pid"
            ],
            "goal_speed": -0.0,
            "compliant": true,
            "angle_limit":
            [
                89.96,
                -57.03
            ],
            "id": 54,
            "name": "r_elbow_y",
            "model": "MX-28",
            "present_position": 4.769999999999996,
            "goal_position": 10.840000000000003,
            "present_speed": -0.0,
            "moving_speed": -0.0,
            "present_load": -0.0,
            "torque_limit": 100.0,
            "lower_limit": 89.96,
            "upper_limit": -57.03,
            "present_voltage": 11.100000000000001,
            "present_temperature": 31.0,
            "pid":
            [
                4.0,
                0.0,
                0.0
            ]
        }
    ],
    "primitives":
    [
        {
            "primitive": "limit_torque",
            "running": false,
            "properties":
            [],
            "methods":
            [
                "start",
                "stop",
                "pause",
                "resume"
            ]
        },
        {
            "primitive": "temperature_monitoring",
            "running": true,
            "properties":
            [],
            "methods":
            [
                "start",
                "stop",
                "pause",
                "resume"
            ]
        },
        {
            "primitive": "dance_beat_motion",
            "running": false,
            "properties":
            [],
            "methods":
            [
                "start",
                "stop",
                "pause",
                "resume"
            ]
        },
        {
            "primitive": "init_position",
            "running": false,
            "properties":
            [],
            "methods":
            [
                "start",
                "stop",
                "pause",
                "resume"
            ]
        },
        {
            "primitive": "upper_body_idle_motion",
            "running": false,
            "properties":
            [],
            "methods":
            [
                "start",
                "stop",
                "pause",
                "resume"
            ]
        },
        {
            "primitive": "head_idle_motion",
            "running": false,
            "properties":
            [],
            "methods":
            [
                "start",
                "stop",
                "pause",
                "resume"
            ]
        },
        {
            "primitive": "arms_turn_compliant",
            "running": false,
            "properties":
            [],
            "methods":
            [
                "start",
                "stop",
                "pause",
                "resume"
            ]
        },
        {
            "primitive": "arms_copy_motion",
            "running": false,
            "properties":
            [],
            "methods":
            [
                "start",
                "stop",
                "pause",
                "resume"
            ]
        }
    ]
}
```



- - -

### Resolving the robot ip
```nginx
GET /ip.json
```

<b>Description</b>

Gets the ip of the robot.

<b>cURL command</b>

`curl http://poppy.local:8080/ip.json`

<b>Returned value</b>

```json
{
    "ip": "10.2.11.54"
}
```



## ⚙ Motors

#### 📕 Summary

```nginx
GET /motors/list.json
GET /motors/aliases/list.json
GET /motors/<alias>/list.json
GET /motors/<motor_name>/registers/list.json
GET /motors/<motor_name>/registers/<register_name>/value.json
POST /motors/<motor_name>/registers/<register_name>/value.json + new_value
GET /motors/registers/<register_name>/list.json
```
- - -

### Getting the list of motors
```nginx
GET /motors/list.json
```

<b>Description</b>

Gives the list of all Poppy's motors.

<b>cURL command</b>

`curl http://poppy.local:8080/motors/list.json`

<b>Returned value</b>

On a Poppy Torso:

```json
{
    "motors":
    [
        "abs_z",
        "bust_y",
        "bust_x",
        "head_z",
        "head_y",
        "l_shoulder_y",
        "l_shoulder_x",
        "l_arm_z",
        "l_elbow_y",
        "r_shoulder_y",
        "r_shoulder_x",
        "r_arm_z",
        "r_elbow_y"
    ]
}
```

- - -

### Getting the list of motor aliases
```nginx
GET /motors/aliases/list.json
```

<b>Description</b>

Aliases define a group of motors. This get request will give you all alias names defined.

<b>cURL command</b>

`curl http://poppy.local:8080/motors/aliases/list.json`

<b>Returned value</b>

On a Poppy Torso:
```json
{
    "aliases":
    [
        "head",
        "r_arm",
        "torso",
        "l_arm",
        "arms"
    ]
}
```

- - -

### Getting the list of motors of an alias
```nginx
GET /motors/<alias>/list.json
```

<b>Description</b>

Gives all the motor names list of motors of an alias

<b>cURL command example</b>

`curl http://poppy.local:8080/motors/head/list.json`

<b>Returned value</b>

On a Poppy Torso:
```json
{
    "head":
    [
        "head_z",
        "head_y"
    ]
}
```

- - -

### Getting the list of registers of a motor
```nginx
GET /motors/<motor_name>/registers/list.json
```

<b>Description</b>

Gives the list of all registers of a motor.

<b>cURL command example</b>

`curl http://poppy.local:8080/motors/head_z/registers/list.json`

<b>Returned value</b>

On a Poppy Torso:
```json
{
    "registers":
    [
        "registers",
        "goal_speed",
        "compliant",
        "safe_compliant",
        "angle_limit",
        "id",
        "name",
        "model",
        "present_position",
        "goal_position",
        "present_speed",
        "moving_speed",
        "present_load",
        "torque_limit",
        "lower_limit",
        "upper_limit",
        "present_voltage",
        "present_temperature",
        "compliance_margin",
        "compliance_slope"
    ]
}
```

- - -

### Getting the value of a motor register
```nginx
GET /motors/<motor_name>/registers/<register_name>/value.json
```

<b>Description</b>

Gives the value of a register of a motor. Motor name and register name are given in the url.

<b>cURL command example</b>

`curl http://poppy.local:8080/motors/head_z/registers/present_temperature/value.json`

<b>Returned value</b>

```json
{
    "present_temperature": 37.0
}
```

- - -

### Setting the value of a motor register
```nginx
POST /motors/<motor_name>/registers/<register_name>/value.json + new_value
```

<b>Description</b>

Changes the value of a register of a motor. Motor name and register name are given in the url. The new value is given in the body request.

<b>cURL command example</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d 'true' \
     http://poppy.local:8080/motors/head_z/registers/compliant/value.json
```

<b>Returned value</b>

```json
{
    "compliant": true
}
```

- - -

### Getting the register values for all motors
```nginx
GET /motors/registers/<register_name>/list.json
```

<b>Description</b>

It gives the value of a register for all motors.

<b>cURL command example</b>

`curl http://poppy.local:8080/motors/registers/angle_limit/list.json`

<b>Returned value</b>

On a Poppy Torso:
```json
{
    "angle_limit":
    {
        "abs_z":
        [
            -79.96,
            80.04
        ],
        "bust_y":
        [
            46.02,
            -22.99
        ],
        "bust_x":
        [
            39.96,
            -40.04
        ],
        "head_z":
        [
            -99.85,
            100.15
        ],
        "head_y":
        [
            20.03,
            -28.060000000000002
        ],
        "l_shoulder_y":
        [
            -209.95999999999998,
            65.03
        ],
        "l_shoulder_x":
        [
            195.01,
            -20.019999999999996
        ],
        "l_arm_z":
        [
            89.98,
            -89.98
        ],
        "l_elbow_y":
        [
            -50.0,
            90.04
        ],
        "r_shoulder_y":
        [
            65.03,
            -210.04000000000002
        ],
        "r_shoulder_x":
        [
            20.019999999999996,
            -195.01
        ],
        "r_arm_z":
        [
            89.98,
            -89.98
        ],
        "r_elbow_y":
        [
            89.96,
            -57.03
        ]
    }
}
```

- - -

### Moving a motor
```nginx
POST /motors/<motor_name>/goto.json + position + duration + wait
```

<b>Description</b>


Sets a motor's `position`, in `duration` seconds and if wait is set to true, il will only return it answer after the move is complete.

Position should be given as a float value (it corresponds to the angle value to reach). Duration should be given as float, in seconds. And wait should be either `true`, `True` or `1` if you want to wait, anything else otherwise. Wait is set to `false` by default. 

<b>cURL command example</b>


```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '{"position":10,"duration":"3","wait":"true"}' \
     http://localhost\:8080/motors/bust_y/goto.json
```

<b>Returned value</b>

```json
{
    "motors":
    {
        "bust_y": 10.0
    },
    "duration": 3.0,
    "waiting": true
}
```

- - -

### Moving several motors
```nginx
POST /motors/goto.json + motors + positions + duration + wait
```

<b>Description</b>

Sets the `position` of `motors`, in `duration` seconds and if wait is set to true, il will only return it answer after the move is complete.

Motors should be given as a list of motor names. Position should be given as a list of float values (it corresponds to the angle values to reach for each motor). Duration should be given as float, in seconds. And wait should be either `true`, `True` or `1` if you want to wait, anything else otherwise. Wait is set to `false` by default. 

<b>cURL command example</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '{"motors":["bust_y", "head_y"], "positions":[0,10],"duration":"3","wait":"true"}' \
     http://localhost\:8080/motors/goto.json
```

<b>Returned value</b>

```json
{
    "motors":
    {
        "bust_y": 0.0,
        "head_y": 10.0
    },
    "duration": 3.0,
    "waiting": true
}
```

## 📷 Sensors

#### 📕 Summary

```nginx
GET /sensors/list.json
GET /sensors/<sensor_name>/registers/list.json
GET /sensors/<sensor_name>/registers/<register_name>/value.json
POST /sensors/<sensor_name>/registers/<register_name>/value.json + new_value
```

- - -

### Getting the list of sensors
```nginx
GET /sensors/list.json
```

<b>Description</b>

Gives the list of all sensors the Poppy robot.

<b>cURL command</b>

`curl http://poppy.local:8080/sensors/list.json`

<b>Returned value</b>

```json
{
    "sensors":
    [
        "camera",
        "marker_detector"
    ]
}
```

- - -

### Getting the list of registers of a sensor
```nginx
GET /sensors/<sensor_name>/registers/list.json
```

<b>Description</b>

Gives the list of register names of a sensor.

<b>cURL command example</b>

`curl http://poppy.local:8080/sensors/camera/registers/list.json`

<b>Returned value</b>

```json
{
    "registers":
    [
        "frame",
        "resolution",
        "fps",
        "index"
    ]
}
```

- - -

### Getting the value of a sensor register
```nginx
GET /sensors/<sensor_name>/registers/<register_name>/value.json
```

<b>Description</b>

Gives the value of a register of a sensor.

<b>cURL command example</b>

`curl http://poppy.local:8080/sensors/camera/registers/resolution/value.json`

<b>Returned value</b>

```json
{
    "resolution":
    [
        640,
        480
    ]
}
```

- - -

### Setting the value of a sensor register
```nginx
POST /sensors/<sensor_name>/registers/<register_name>/value.json + new_value
```

<b>Description</b>

Changes the value of a register of a sensor. Sensor name and register name are given in the url. The new value is given in the body request.

**⚠ This post request could not be tested because our Poppies only have read-only sensor registers ⚠**

<b>cURL command example</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '30' \
     http://poppy.local:8080/sensors/camera/registers/fps/value.json
```

<b>Returned value</b>

Returns the following error:
```json
{
    "error": "Either sensor 'camera' or register 'fps' does not exist. Or you want to change a read-only register value",
    "tip": "You can find the list of sensors with /sensors/list.json and their registers with /sensors/<sensor_name>/registers/list.json",
   
: "can't set attribute"
}
```

## 🦾 Records

#### 📕 Summary

```nginx
GET /records/list.json
POST /records/<move_name>/record.json
POST /records/<move_name>/save.json
POST /records/<move_name>/play.json
POST /records/<move_name>/stop.json
```

- - -

### Getting available records
```nginx
GET /records/list.json
```

<b>Description</b>

Gives the list of all recorded moves by the user.

<b>cURL command</b>

`curl http://poppy.local:8080/records/list.json`

<b>Returned value</b>

```json
{
    "moves":
    [
        "wave_hand",
        "raise_left_arm",
        "my_dance"
    ]
}
```

- - -

###  Getting all positions of a record
```nginx
GET records/<move_name>/value.json
```

<b>Description</b>

Gives all positions of a record with the time when they were reached.

The answer will give all positions for each recorded motor every 0.2 second in the field `move_name`. It also gives the amount of time keys recorded in the field `length`.

<b>cURL command example</b>

`curl http://poppy.local:8080/records/my_move/value.json`

<b>Returned value</b>

```json
{
    "my_move":
    {
        "3.4332275390625e-05":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.02030038833618164":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.04038596153259277":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.060483694076538086":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.08058643341064453":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.10069108009338379":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.12079858779907227":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.1409299373626709":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.16099071502685547":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.1810588836669922":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.20113611221313477":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.22122740745544434":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.24132609367370605":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.261415958404541":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.22,
                -0.0
            ]
        },
        "0.2814903259277344":
        {
            "head_z":
            [
                -150.0,
                0.0
            ],
            "l_arm_z":
            [
                -0.31,
                -0.0
            ]
        }
    },
    "length": 15
}
```

- - -

### Recording a move
```nginx
POST /records/<move_name>/record.json + motors
```

<b>Description</b>

If your motors are compliant, you will be able to move your robot motors are records some moves. This request starts a record.

Motor names in the body are optional. If yout body is empty, it will by default record the move with all motors. Motors should be given as follows: `{"motors": ["head_z", "l_arm_z"]}` or `{"motors": "head_z,l_arm_z"]}`.

If a move of the same name has already been defined, it will be overwritten !

<b>cURL command example example</b>
```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '{"motors":["head_z","l_arm_z"]}' \
     http://localhost:8080/records/my_move/record.json
```

<b>Returned value</b>

```json
{
    "my_move": "recording"
}
```

- - -

### Saving a move
```nginx
POST /records/<move_name>/save.json
```

<b>Description</b>

Stops the record and saves the move you were recording.

This request does not need data in its body.

<b>cURL command example</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     http://localhost:8080/records/my_move/save.json
```

<b>Returned value</b>

```json
{
    "my_move": "saved"
}
```

- - -

### Playing a recorded move
```nginx
POST /records/<move_name>/play.json + speed
```

<b>Description</b>

Replays a recorded move.

The speed parameter is a float value. It can be negative to play the move backwards. it should be given as follows: `{"speed":-1.0}` or `{"speed":0.5}`.

> `1.0` is the speed to give to replay the move at the same speed as it was recorded.

<b>cURL command example</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '{"speed": -1.0}' \
     http://localhost:8080/records/my_move/play.json
```

<b>Returned value</b>

```json
{
    "my_move": "started replay"
}
```

- - -

### Stopping the replay of a recorded move 
```nginx
POST /records/<move_name>/stop.json
```

<b>Description</b>

Stops the replay a of a record move.

This request does not need data in its body.

<b>cURL command example</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     http://localhost:8080/records/my_move/stop.json
```

<b>Returned value</b>

```json
{
    "my_move": "stopped"
}
```

## 🤖 Primitives

#### 📕 Summary

```nginx
GET /primitives/list.json
GET /primitives/running/list.json
GET /primitives/<primitive_name>/start.json
GET /primitives/<primitive_name>/stop.json
GET /primitives/<primitive_name>/pause.json
GET /primitives/<primitive_name>/resume.json
GET /primitives/<primitive_name>/properties/list.json
GET /primitives/<primitive_name>/properties/<prop>/value.json
POST /primitives/<primitive_name>/properties/<prop>/value.json + new_value
GET /primitives/<primitive_name>/methods/list.json
POST /primitives/<primitive_name>/methods/<method_name>/args.json
```

- - -

### Getting the list of all primitives
```nginx
GET /primitives/list.json
```

<b>Description</b>

Primitives are predefined behaviours of our Poppy robots. You can add your own primitive if you write it in source files. A tutorial (FR :fr:) can be found for the Ergo-Jr [here](https://github.com/poppy-project/poppy-ergo-jr/blob/master/software/poppy_ergo_jr/primitives/How_to_add_primitive_FR.py). You can add your behaviour in `/home/poppy/dev/<creature_name>/software/<creature_name>/primitives` if you're on Raspberry.

<b>cURL command</b>

`curl http://poppy.local:8080/primitives/list.json`

<b>Returned value</b>

```json
{
    "primitives":
    [
        "limit_torque",
        "temperature_monitoring",
        "dance_beat_motion",
        "init_position",
        "upper_body_idle_motion",
        "head_idle_motion",
        "arms_turn_compliant",
        "arms_copy_motion",
        "_mymove_recorder",
        "_mymove_player"
    ]
}
```

- - -

### Getting the list of all running primitives
```nginx
GET /primitives/running/list.json
```

<b>Description</b>

Same request as above but only gives the running primitives

<b>cURL command</b>

`curl http://poppy.local:8080/primitives/running/list.json`

<b>Returned value</b>

```json
{
    "primitives":
    [
        "temperature_monitoring"
    ]
}
```

- - -

### Running a primitive
```nginx
GET /primitives/<primitive_name>/start.json
```

<b>Description</b>

Runs an existing primitive.

All existing primitives can be found with `GET /primitives/list.json` (described [above](#getting-the-list-of-all-primitives)).

<b>cURL command example</b>

`curl http://poppy.local:8080/primitives/init_position/start.json`

<b>Returned value</b>

```json
{
    "init_position": "started"
}
```

- - -

### Stopping a primitive
```nginx
GET /primitives/<primitive_name>/stop.json
```

<b>Description</b>

Stops a previously running primitive.

<b>cURL command example</b>

`curl http://poppy.local:8080/primitives/init_position/stop.json`

<b>Returned value</b>

```json
{
    "init_position": "stopped"
}
```

- - -

### Pausing a primitive
```nginx
GET /primitives/<primitive_name>/pause.json
```

<b>Description</b>

Pauses a previously running primitive.

<b>cURL command example</b>

`curl http://poppy.local:8080/primitives/init_position/pause.json`

<b>Returned value</b>

```json
{
    "init_position": "paused"
}
```

- - -

### Resuming a primitive
```nginx
GET /primitives/<primitive_name>/resume.json
```

<b>Description</b>

Resumes a previously paused primitive.

<b>cURL command example</b>

`curl http://poppy.local:8080/primitives/init_position/resume.json`

<b>Returned value</b>

```json
{
    "init_position": "resumed"
}
```

- - -

### Getting the list of all properties of a primitive
```nginx
GET /primitives/<primitive_name>/properties/list.json
```

<b>Description</b>

Gives the list of property names of a primitive.

<b>cURL command</b>

`curl http://poppy.local:8080/init_position/properties/list.json`

<b>Returned value</b>

Unfortunately, my primitives don't have any property.

```json
{
    "property": []
}
```

- - -

### Getting the value of a property of a primitive
```nginx
GET /primitives/<primitive_name>/properties/<prop>/value.json
```

<b>Description</b>

It would give the value of a property of a primitive.

Unfortunately, my primitives don't have any property.

<b>cURL command</b>

`curl http://poppy.local:8080/primitives/init_position/properties/<prop>/value.json`

<b>Returned value</b>

Unfortunately, my primitives don't have any property.

- - -

### Setting the value of a property of a primitive
```nginx
POST /primitives/<primitive_name>/properties/<prop>/value.json + new_value
```

<b>Description</b>

It would set the value of a property of a primitive.

Unfortunately, my primitives don't have any property.

<b>cURL command</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d 'new_value' \
     http://poppy.local:8080/primitives/init_position/properties/<prop>/value.json
```
<b>Returned value</b>

Unfortunately, my primitives don't have any property.

- - -

### Getting the list of all methods of a primitive
```nginx
GET /primitives/<primitive_name>/methods/list.json
```

<b>Description</b>

Gives the list of methods names of a primitive.

<b>cURL command</b>

`curl http://poppy.local:8080/primitives/init_position/methods/list.json`

<b>Returned value</b>

```json
{
    "methods":
    [
        "start",
        "stop",
        "pause",
        "resume"
    ]
}
```

- - -

### Calling a method of a primitive with arguments
```nginx
POST /primitives/<primitive_name>/methods/<method_name>/args.json
```

<b>Description</b>

Calls a method of a primitive with optionnal arguments. Unfortunately, currently our primitives don't have methods with optionnal arguments.
 

<b>cURL command example (not tested)</b>

Assuming that the start method of the init_position primitive can take optional arguments, such as a speed (this is currently not the case).

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '1.0' \
     http://poppy.local:8080/primitives/init_position/methods/speed/args.json
```

<b>Returned value</b>

Previous example will return an error, because start method cannot take optionnal arguments.

But if it was the case, it would give an answer like :
```json
{"init_position:start": 1.0}
``` 
As 1.0 being the return value of start function. Currently, start function doesn't return anything. 
