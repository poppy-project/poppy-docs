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

## Cas d'utilisation


