# API REST de Pypot

> **Attention** L'API REST a été mise à jour dans la version 4.0.0. Cette page présente la documentation de l'API v4.0.0.

L'API Pypot est organisée autour de [REST](https://fr.wikipedia.org/wiki/Representational_state_transfer "Representational state transfer"). Notre API dispose d'URLs prévisibles orientées ressources, renvoie des réponses codées en JSON et utilise des codes de réponse HTTP standard.

# Les erreurs

Pypot utilise des codes de réponse HTTP conventionnels pour indiquer le succès ou l'échec d'une requête API. En général: les codes de la plage «2xx» indiquent le succès. Les codes de la plage «4xx» indiquent une erreur qui a échoué compte tenu des informations fournies (par exemple, un paramètre requis a été omis, une charge a échoué, etc.). Les codes de la gamme `5xx` indiquent une erreur avec les serveurs de Poppy (c'est rare).

| Code | Signification |
| ----:|:------- |
| 200 - OK | Tout a fonctionné comme prévu. |
| 202 - Accepted | La demande a été acceptée pour traitement, mais le traitement n'est pas terminé. |
| 204 - No Content | Le serveur a répondu à la demande mais il ne renvoie rien. |
| 404 - Not Found | La ressource demandée n'existe pas. |
| 500, 502, 503, 504 - Server Errors | Quelque chose s'est mal passé du côté de Poppy. (C'est rare) |

# Points de terminaison

## 🔌 Divers

#### 📕 Sommaire

```apache
GET /
GET /robot.json
GET /ip.json
```
- - -

### Obtenir tous les points de terminaison

```apache
GET /
```

<b>Description</b>

Fournit tous les points de terminaison de l'API REST au format HTML.

<b>Commande cURL</b>

`curl http://poppy.local:8080/`


<b>Valeur de retour</b>

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

### Obtenir toutes les valeurs du robot

```apache
GET /robot.json
```

<b>Description</b>

Obtenez toutes les valeurs du robot, telles que les valeurs d'attributs des moteurs ou les méthodes de comportement.

<b>Commande cURL</b>

`curl http://poppy.local:8080/robot.json`

<b>Valeur de retour</b>

Sur un Poppy Torso:
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

### Obtenir l'ip du robot
```apache
GET /ip.json
```

<b>Description</b>

Permet de récupérer l'adresse IP du robot.

<b>Commande cURL</b>

`curl http://poppy.local:8080/ip.json`

<b>Valeur de retour</b>

```json
{
    "ip": "10.2.11.54"
}
```



## ⚙ Moteurs

#### 📕 Sommaire

```apache
GET /motors/list.json
GET /motors/aliases/list.json
GET /motors/<alias>/list.json
GET /motors/<motor_name>/registers/list.json
GET /motors/<motor_name>/registers/<register_name>/value.json
POST /motors/<motor_name>/registers/<register_name>/value.json + new_value
GET /motors/registers/<register_name>/list.json
```
- - -

### Obtenir la liste des moteurs
```apache
GET /motors/list.json
```

<b>Description</b>

Donne la liste de tous les moteurs du robot Poppy.

<b>Commande cURL</b>

`curl http://poppy.local:8080/motors/list.json`

<b>Valeur de retour</b>

Sur un Poppy Torso :

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

### Obtenir la liste des alias moteur
```apache
GET /motors/aliases/list.json
```

<b>Description</b>

Les alias définissent un groupe de moteurs. Cette requête vous donnera tous les noms d'alias définis.

<b>Commande cURL</b>

`curl http://poppy.local:8080/motors/aliases/list.json`

<b>Valeur de retour</b>

Sur un Poppy Torso :
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

### Obtenir la liste des moteurs d'un alias
```apache
GET /motors/<alias>/list.json
```

<b>Description</b>

Donne tous les noms de moteurs faisant partie de l'alias donné dans l'url.

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/motors/head/list.json`

<b>Valeur de retour</b>

Sur un Poppy Torso :
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

### Obtenir la liste des registres d'un moteur
```apache
GET /motors/<motor_name>/registers/list.json
```

<b>Description</b>

Donne la liste de tous les registres d'un moteur.

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/motors/head_z/registers/list.json`

<b>Valeur de retour</b>

Sur un Poppy Torso :
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

### Obtenir la valeur d'un registre d'un moteur
```apache
GET /motors/<motor_name>/registers/<register_name>/value.json
```

<b>Description</b>

Donne la valeur d'un registre d'un moteur. Le nom du moteur et le nom du registre sont indiqués dans l'url.

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/motors/head_z/registers/present_temperature/value.json`

<b>Valeur de retour</b>

```json
{
    "present_temperature": 37.0
}
```

- - -

### Définir la valeur d'un registre d'un moteur
```apache
POST /motors/<motor_name>/registers/<register_name>/value.json + new_value
```

<b>Description</b>

Modifie la valeur d'un registre d'un moteur. Le nom du moteur et le nom du registre sont indiqués dans l'url. La nouvelle valeur est donnée dans le corps de la requête.

<b>Exemple d'une commande cURL</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d 'true' \
     http://poppy.local:8080/motors/head_z/registers/compliant/value.json
```

<b>Valeur de retour</b>

```json
{
    "compliant": true
}
```

- - -

### Obtenir les valeurs d'un registre pour tous les moteurs
```apache
GET /motors/registers/<register_name>/list.json
```

<b>Description</b>

Cette requête donne la valeur d'un registre pour tous les moteurs du robot.

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/motors/registers/angle_limit/list.json`

<b>Valeur de retour</b>

Sur un Poppy Torso :
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

### Déplacer un moteur
```apache
POST /motors/<motor_name>/goto.json + position + duration + wait
```

<b>Description</b>


Définit la **position** des **motors**, en **duration** secondes et si **wait** vaut `vrai`, il ne renverra sa réponse qu'une fois le déplacement terminé.

La position doit être donnée sous forme de valeur flottante (elle correspond à la valeur de l'angle à atteindre). La durée doit être donnée sous forme de flottant, en secondes. Et **wait** doit valoir `true`, `True` ou `1` si vous voulez attendre, n'importe quelle autre valeur si vous ne voulez pas attendre. **wait** est défini sur `false` par défaut.

<b>Exemple d'une commande cURL</b>


```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '{"position":10,"duration":"3","wait":"true"}' \
     http://localhost\:8080/motors/bust_y/goto.json
```

<b>Valeur de retour</b>

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

### Déplacer plusieurs moteurs
```apache
POST /motors/goto.json + motors + positions + duration + wait
```

<b>Description</b>

Définit la **position** des **motors**, en **duration** secondes et si **wait** vaut `vrai`, il ne renverra sa réponse qu'une fois le déplacement terminé.

Les moteurs doivent être indiqués sous forme de liste de noms de moteurs. La position doit être donnée sous forme de liste de valeurs flottantes (elle correspond aux valeurs d'angle à atteindre pour chaque moteur). La durée doit être donnée sous forme de flottant, en secondes. Et wait devrait être soit `true`, `True` ou `1` si vous voulez attendre, n'importe quelle autre valeur si vous ne voulez pas attendre. **wait** est défini sur `false` par défaut.

<b>Exemple d'une commande cURL</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '{"motors":["bust_y", "head_y"], "positions":[0,10],"duration":"3","wait":"true"}' \
     http://localhost\:8080/motors/goto.json
```

<b>Valeur de retour</b>

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

## 📷 Capteurs

#### 📕 Sommaire

```apache
GET /sensors/list.json
GET /sensors/<sensor_name>/registers/list.json
GET /sensors/<sensor_name>/registers/<register_name>/value.json
POST /sensors/<sensor_name>/registers/<register_name>/value.json + new_value
```

- - -

### Obtenir la liste des capteurs
```apache
GET /sensors/list.json
```

<b>Description</b>

Donne la liste de tous les capteurs du robot Poppy.

<b>Commande cURL</b>

`curl http://poppy.local:8080/sensors/list.json`

<b>Valeur de retour</b>

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

### Obtenir la liste des registres d'un capteur
```apache
GET /sensors/<sensor_name>/registers/list.json
```

<b>Description</b>

Donne la liste des noms des registres d'un capteur.

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/sensors/camera/registers/list.json`

<b>Valeur de retour</b>

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

### Obtenir la valeur d'un registre de capteur
```apache
GET /sensors/<sensor_name>/registers/<register_name>/value.json
```

<b>Description</b>

Donne la valeur d'un registre d'un capteur.

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/sensors/camera/registers/resolution/value.json`

<b>Valeur de retour</b>

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

### Définir de la valeur d'un registre d'un capteur
```apache
POST /sensors/<sensor_name>/registers/<register_name>/value.json + new_value
```

<b>Description</b>

Modifie la valeur d'un registre d'un capteur. Le nom du capteur et le nom du registre sont indiqués dans l'url. La nouvelle valeur est donnée dans le corps de la requête.

**⚠ Cette requête n'a pas pu être testée car nos robots Poppy n'ont que des capteurs dont les registres sont en lecture seule ⚠**

<b>Exemple d'une commande cURL</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '30' \
     http://poppy.local:8080/sensors/camera/registers/fps/value.json
```

<b>Valeur de retour</b>

Cette requête retourne l'erreur suivante:
```json
{
    "error": "Either sensor 'camera' or register 'fps' does not exist. Or you want to change a read-only register value",
    "tip": "You can find the list of sensors with /sensors/list.json and their registers with /sensors/<sensor_name>/registers/list.json",
    "details" : "can't set attribute"
}
```

## 🦾 Enregistrements

#### 📕 Sommaire

```apache
GET /records/list.json
POST /records/<move_name>/record.json
POST /records/<move_name>/save.json
POST /records/<move_name>/play.json
POST /records/<move_name>/stop.json
```

- - -

### Obtenir les enregistrements disponibles
```apache
GET /records/list.json
```

<b>Description</b>

Donne la liste de tous les déplacements enregistrés par l'utilisateur.

<b>Commande cURL</b>

`curl http://poppy.local:8080/records/list.json`

<b>Valeur de retour</b>

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

###  Obtenir toutes les positions d'un enregistrement
```apache
GET records/<move_name>/value.json
```

<b>Description</b>

Donne toutes les positions d'un enregistrement avec le temps auquel elles ont été atteintes.

La réponse fournira toutes les positions pour chaque moteur enregistré, toutes les 0,2 seconde dans le champ **"move_name"**. Il donne également le nombre de positions enregistrées dans le champ **"longueur"**.

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/records/my_move/value.json`

<b>Valeur de retour</b>

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

### Enregistrer un mouvement
```apache
POST /records/<move_name>/record.json + motors
```

<b>Description</b>

Si vos moteurs sont mous, vous pourrez déplacer les moteurs de votre robot et enregistrer certains mouvements. Cette requête démarre un enregistrement.

Les noms des moteurs dans le corps sont facultatifs. Si votre corps est vide, il enregistrera par défaut le mouvement avec tous les moteurs du robot. Les moteurs doivent être donnés de l'une des deux façons suivantes : `{"motors": ["head_z", "l_arm_z"]}` ou `{"motors": "head_z,l_arm_z"]}`.

⚠ Si un mouvement du même nom a déjà été défini, il sera écrasé !

<b>Exemple d'une commande cURL</b>
```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '{"motors":["head_z","l_arm_z"]}' \
     http://localhost:8080/records/my_move/record.json
```

<b>Valeur de retour</b>

```json
{
    "my_move": "recording"
}
```

- - -

### Enregistrer un mouvement
```apache
POST /records/<move_name>/save.json
```

<b>Description</b>

Arrête l'enregistrement en cours et le sauvegarde.
Cette requête n'a pas besoin d'information supplémentaire dans son corps de requête.

<b>Exemple d'une commande cURL</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     http://localhost:8080/records/my_move/save.json
```

<b>Valeur de retour</b>

```json
{
    "my_move": "saved"
}
```

- - -

### Jouer un coup enregistré
```apache
POST /records/<move_name>/play.json + speed
```

<b>Description</b>

Rejoue un mouvement enregistré.

Le paramètre de vitesse est une valeur flottante. Il peut être négatif pour jouer le coup à l'envers. Il doit être donné de la façon suivante : `{"speed":-1.0}` ou `{"speed":0.5}`.

> `1.0` est la vitesse à donner pour rejouer le coup à la même vitesse qu'il a été enregistré.

<b>Exemple d'une commande cURL</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '{"speed": -1.0}' \
     http://localhost:8080/records/my_move/play.json
```

<b>Valeur de retour</b>

```json
{
    "my_move": "started replay"
}
```

- - -

### Arrêter la relecture d'un coup enregistré
```apache
POST /records/<move_name>/stop.json
```

<b>Description</b>

Arrête la relecture d'un coup enregistré.

Cette demande n'a pas besoin de données dans son corps.

<b>Exemple d'une commande cURL</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     http://localhost:8080/records/my_move/stop.json
```

<b>Valeur de retour</b>

```json
{
    "my_move": "stopped"
}
```

## 🤖 Primitives

#### 📕 Sommaire

```apache
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

### Obtenir la liste de toutes les primitives
```apache
GET /primitives/list.json
```

<b>Description</b>

Les primitives sont des comportements prédéfinis de nos robots Poppy. Vous pouvez ajouter votre propre primitive si vous l'écrivez dans les fichiers source. Un tutoriel (FR :fr:) est disponible pour l'Ergo-Jr [ici](https://github.com/poppy-project/poppy-ergo-jr/blob/master/software/poppy_ergo_jr/primitives/How_to_add_primitive_FR.py). Vous pouvez ajouter votre comportement dans `/home/poppy/dev/<creature_name>/software/<creature_name>/primitives` si vous êtes sur Raspberry.

<b>Commande cURL</b>

`curl http://poppy.local:8080/primitives/list.json`

<b>Valeur de retour</b>

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

### Obtenir la liste de toutes les primitives en cours d'exécution
```apache
GET /primitives/running/list.json
```

<b>Description</b>

Même requête que ci-dessus mais elle ne donne que les primitives en cours d'exécution.

<b>Commande cURL</b>

`curl http://poppy.local:8080/primitives/running/list.json`

<b>Valeur de retour</b>

```json
{
    "primitives":
    [
        "temperature_monitoring"
    ]
}
```

- - -

### Exécuter une primitive
```apache
GET /primitives/<primitive_name>/start.json
```

<b>Description</b>

Exécute une primitive existante.

Toutes les primitives existantes peuvent être obtenues avec `GET /primitives/list.json` (décrite [ci-dessus](#obtenir-la-liste-de-toutes-les-primitives).

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/primitives/init_position/start.json`

<b>Valeur de retour</b>

```json
{
    "init_position": "started"
}
```

- - -

### Arrêter une primitive
```apache
GET /primitives/<primitive_name>/stop.json
```

<b>Description</b>

Arrête une primitive en cours d'exécution.

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/primitives/init_position/stop.json`

<b>Valeur de retour</b>

```json
{
    "init_position": "stopped"
}
```

- - -

### Mettre une primitive en pause
```apache
GET /primitives/<primitive_name>/pause.json
```

<b>Description</b>

Suspend une primitive en cours d'exécution.

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/primitives/init_position/pause.json`

<b>Valeur de retour</b>

```json
{
    "init_position": "paused"
}
```

- - -

### Reprendre la lecture d'une primitive
```apache
GET /primitives/<primitive_name>/resume.json
```

<b>Description</b>

Reprend la lecture d'une primitive précédemment mise en pause.

<b>Exemple d'une commande cURL</b>

`curl http://poppy.local:8080/primitives/init_position/resume.json`

<b>Valeur de retour</b>

```json
{
    "init_position": "resumed"
}
```

- - -

### Obtenir la liste de toutes les propriétés d'une primitive
```apache
GET /primitives/<primitive_name>/properties/list.json
```

<b>Description</b>

Donne la liste des noms de propriétés d'une primitive.

<b>Commande cURL</b>

`curl http://poppy.local:8080/init_position/properties/list.json`

<b>Valeur de retour</b>

Malheureusement, mes primitives n'ont aucune propriété.

```json
{
    "property": []
}
```

- - -

### Obtenir la valeur d'une propriété d'une primitive
```apache
GET /primitives/<primitive_name>/properties/<prop>/value.json
```

<b>Description</b>

Cette requête donnerait la valeur d'une propriété d'un primitive.

**⚠ Cette requête get n'a pas pu être testée car nos primitives n'ont aucune propriété ⚠**

<b>Commande cURL</b>

`curl http://poppy.local:8080/primitives/init_position/properties/<prop>/value.json`

<b>Valeur de retour</b>

Malheureusement, mes primitives n'ont aucune propriété.

- - -

### Définir la valeur d'une propriété d'une primitive
```apache
POST /primitives/<primitive_name>/properties/<prop>/value.json + new_value
```

<b>Description</b>

Cette requête modifierait la valeur d'une propriété d'une primitive.

**⚠ Cette requête post n'a pas pu être testée car nos primitives n'ont aucune propriété ⚠**

<b>Commande cURL</b>

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d 'new_value' \
     http://poppy.local:8080/primitives/init_position/properties/<prop>/value.json
```
<b>Valeur de retour</b>

Malheureusement, mes primitives n'ont aucune propriété.

- - -

### Obtenir la liste de toutes les méthodes d'une primitive
```apache
GET /primitives/<primitive_name>/methods/list.json
```

<b>Description</b>

Donne la liste des noms des méthodes d'une primitive.

<b>Commande cURL</b>

`curl http://poppy.local:8080/primitives/init_position/methods/list.json`

<b>Valeur de retour</b>

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

### Appeler une méthode d'une primitive avec des arguments
```apache
POST /primitives/<primitive_name>/methods/<method_name>/args.json
```

<b>Description</b>

Appelle une méthode d'une primitive avec des arguments optionnels. Malheureusement, nos primitives actuelles n'ont pas de méthodes acceptant des arguments optionnels.

<b>Exemple d'une commande cURL (non testée)</b>

En supposant que la méthode `start` de la primitive `init_position` puisse prendre des arguments optionnels, comme une vitesse (ce n'est actuellement pas le cas).

```bash
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '1.0' \
     http://poppy.local:8080/primitives/init_position/methods/speed/args.json
```

<b>Valeur de retour</b>

L'exemple précédent renverra une erreur, car la méthode `start` ne peut pas prendre d'arguments optionnels.

Mais si c'était le cas, cela donnerait une réponse comme :
```json
{"init_position:start": 1.0}
```
Avec 1.0 étant la valeur de retour de la méthode `start`. Actuellement, la méthode `start` ne renvoie rien.
