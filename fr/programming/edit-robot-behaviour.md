# Changer le look ou le comportement du robot

Le comportement de votre robot est décrit dans un fichier de configuration qui indique :
* La liste de ses actuateurs (moteurs)
* La liste de ses capteurs

## Ouvrir et éditer le fichier de configuration

Si vous avez besaoin de personnaliser votre robot vous devrez modifier ce fichier de configuration pour que Pypot ait connaissance de votre modification et vous permettre d'accéder à votre nouveau composant, tel qu'un nouveau moteur.

C'est une technique avancée et cela pourrait mettre en panne votre logiciel de robot, donc faites attention. Heureusement vous povuez toujours revenir en arrière.

D'abord ouvrez le fichier de configuration selon votre situation :

### Situation 1 : votre robot fonctionne avec une Raspberry Pi
Connectez-vous au robot via SSH et ouvrez le fichier :

```bash
ssh poppy@poppy.local    # Utilisez le mot de passe "poppy"
nano ~/dev/poppy_ergo_jr/poppy_ergo_jr.py
```

Vous pouvez maintenant l'éditer (voir ci-dessous)

### Situation 2 : votre robot est connecté à votre ordinateur en USB
Dans ce cas vous pouvez soit:
* fournir un fichier de configuration en Python avec `r = pypot.from_json("path/to/my/configuration/file.json")` au lieu de l'habituel `r = PoppyTorso()`
* changer le fichier de configuraiton qui se trouve sur votre ordinateur. Son chemin est différent selon la façon dont vous avez installé votre logiciel. Certains utilisateurs Linux pourraient le trouver ici par exemple : `~/.local/lib/python3.9/site-packages/poppy_ergo_jr/configuration/poppy_ergo_jr.json`

## Quelques cas d'utilisation
### Ajouter un nouveau moteur

Ajoutez les champs suivants à votre fichier de configuration : nom, modèle, identifiant et limites (en dégrés) de votre nouveau moteur :

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

Les modèles de moteurs supportés sont MX-106, MX-64, MX-28, MX-12, AX-12, AX-18, RX-24, RX-28, RX-64, XL-320, SR-RH4D, EX-106. Les modèles dérivés (par ex MX-28AT) son aussi supportés, mais vous devez dans ce cas indiquer le nom du modèle de base (par exemple MX-28).

Attention à ne pas faire d'erreur de syntaxe, puis enregistrez le fichier. Ensuite votre moteur sera accessible comme n'importe quel autre dans pypot.

### Ajouter un capteur

Ici, nous vous montrons comment activer la **détection de visage humain** via la primitive `face_detector` qui existe déjà dans votre robot mais jamais activée par défaut (car elle consomme beaucoup de CPU) :

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

Ensuite redémarrez votre robot. La primitive est maintenant utilisable en Python via `poppy.face_detector` comme n'importe quelle autre primitive.

### utiliser un autre port série / Utiliser un autre FTDI tel que U2D2

Les FTDI sont des composants en charge de la conversion du signal USB en signal série. L'USB2AX (pour les moteurs AX et MX) et la [carte Pixl](https://github.com/poppy-project/pixl) (pour Raspberry Pi) sont les 2 FTDI officiels vendus avec votre robot Poppy. 

Robotis vend également le modèle [U2D2](https://emanual.robotis.com/docs/en/parts/interface/u2d2/) qui est compatible avec de multiples connecteurs moteurs (TTL et RS-485).

Tous les robots Poppy et pypot sont compatibles avec U2D2 mais nécessitent des changements matériels et logiciels :

#### changements matériels

Les connecteurs JST de vos câbles moteurs peuvent être différents côté U2D2 et côté moteurs. Cependant, tant qu'ils sont compatibles avec le protocole TTL, vous ouvez connecter vos moteurs au connecteur TTL de l'U2D2 avec des files Dupont.

* Connectez `GND` à `GND`
* Connectez `Data` à `Data`
* La broche centrale (`+12V power`) n'est pas utilisée par l'U2D2, vous devez alimenter les moteurs avec une autre source d'alimentation 12V (par ex via SMPS2Dynamixel)

**Attention:** prenez soin de vérifiez que vous n'intervertissez pas les fils GND, 12V et Data.

#### Changements logiciels du fichier de configuration

1. Passez `"sync_read": true` à `"sync_read": false,` (car l'U2D2 est seulement compatible avec les lectures BULK)
2. Changez `"port": "/dev/ttyAMA0"` en `"port": "/dev/ttyUSB0"` (car l'U2D2 est reconnu sous un nom différent par le noyau Linux)

Ensuite redémarrez votre Raspberry Pi ou reconnectez-vous à votre robot.


