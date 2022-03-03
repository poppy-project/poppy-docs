# Poppy-creature library

## Introduction

Poppy-creature est une petite bilbiothèque fournissant une interace générique de contrôle de votre robot (que ce soit un Poppy Humanoid, Poppy Torso, Poppy Ergo Jr...).

Le coeur de Poppy-creature est la classe Python [pypot.creatures.abstractcreature.AbstractPoppyCreature](https://github.com/poppy-project/pypot/tree/master/pypot/creatures/abstractcreature.py) qui prend en entrée une configuration et construit une instance de [pypot.robot.robot.Robot](https://github.com/poppy-project/pypot/blob/master/pypot/robot/robot.py), tout en y ajoutant quelques additions pratiques comme un serveur REST et Snap qui permettent de programmer en Scratch en Snap, ou encore un paramètre pour se connecter à un simulateur (CoppaliaSim ou visualisateur en ligne).

L'instance de `AbstractPoppyCreature` prend en paramètres :

- `base_path` default: None Path where the creature sources are. The librarie looks in the default PATH if not set.
- `config` default: None Path to the configuration file with respect to the base-path
- `simulator` default: None Possible values : 'vrep' or 'poppy-simu'. Defines if we are using a simulator (and which one) or a real robot.
- `scene` default: None Path to the scene to load in the simulator. Only if simulator is vrep. Defaults to the scene present in the creature library if any (e.g. poppy\_humanoid.ttt).
- `host` default: 'localhost' Hostname of the machine where the simulator runs. Only if simulator is not None.
- `port` default: 19997 Port of the simulator. Only if simulator is not None.
- `use_snap` default: False Should we launch the Snap! server
- `snap_host` default: 0.0.0.0 Hostname of the Snap! server
- `snap_port` default: 6969 Port of the Snap! server
- `snap_quiet` default: True Should Snap! not output logs
- `use_http` default: False Should we launch the HTTP server (for
- `http_host` default: 0.0.0.0 Hostname of the HTTP server
- `http_port` default: 8080 Port of the HTTP server
- `http_quiet` default: True Should HTTP not output logs
- `use_remote` default: False Should we launch the Remote Robot server
- `remote_host` default: 0.0.0.0 Hostname of the Remote Robot server
- `remote_port` default: 4242 Port of the Remote Robot server
- `sync` default: True Should we launch the synchronization loop for motor communication

Les sources sont disponibles sur [GitHub](https://github.com/poppy-project/pypot/tree/master/pypot/creatures).

## Poppy services

Poppy-creature fournit également un utilitaire en ligne de commande *poppy-services*. Celui-ci fournit des outils pratiques pour démarrer tous les services de votre robot sur votre ordinateur. Habituellement cela n'est pas nécessaire car ces services démarrent automatiquement sur la Raspberry Pi. Cependant cela est très utile si vous n'utilisez pas de Raspberry Pi et connectez ainsi votre robot directement à votre ordinateur en branchant l'adaptateur USB2AX sur un de ses ports USB. 

Vous pouvez ensuite démarrer différents services de votre robot, par exemple pour programmer votre Ergo Jr avec Scratch :
        poppy-services poppy-ergo-jr --scratch


Ou encore programmer votre Torso avec Snap :

        poppy-services poppy-torso --snap
    
Un autre exemple pour utiliser le simulateur avec *Snap!*:

        poppy-services poppy-ergo-jr --snap --poppy-simu
    

La façon générique d'utiliser Poppy-services est la suivante :

        poppy-services <creature_name> <options>
    

Les options disponibles sont :

- `--vrep`: ouvre la connexion au simulateur CoppeliaSim. Vous devez démarrer le simualteur vous-même et charger un fichier de scène
- `--poppy-simu`: ouvre la connexion au visualisateur en ligne (uniquement Ergo Jr)
- `--scratch`: démarre l'interface de programmation visuelle Scratch 
- `--snap`: démarre l'interface de programmation visuelle *Snap!*
- `-nb` or `--no-browser`: ne pas ouvrir la page Web du langage de programmation graphique. Ce paramètre est surtout utile si votre ordinateur n'a pas d'interface graphique.
- `--http`: Démarrer l'API REST du robot (utilisateurs avancés)
- `--remote`: Démarrer un serveur de robot distant (utilisateurs avancés)
- `-v` or `--verbose`: Activer le mode verbeux pour faciliter le déboguage
<!-- TODO translate
## Create your own Poppy creature

While developping a new Poppy creature, it is first easier to simply define it in a configuration file or dictionnary and instanciate a [pypot.robot.robot.Robot](https://github.com/poppy-project/pypot/blob/master/pypot/robot/robot.py) from Pypot directly.

But when you want to make it easily usable and available to non-geek public, the best is to create your own creature's library. It should contain a configuration file and a class that extends [pypot.creatures.abstractcreature.AbstractPoppyCreature](https://github.com/poppy-project/pypot/tree/master/pypot/creatures/abstractcreature.py). You can then add your own properties and primitives.

Example from Poppy Humanoid:

```python
class PoppyHumanoid(AbstractPoppyCreature):
    @classmethod
    def setup(cls, robot):
        robot._primitive_manager._filter = partial(numpy.sum, axis=0)

        for m in robot.motors:
            m.goto_behavior = 'minjerk'

        for m in robot.torso:
            m.compliant_behavior = 'safe'

        # Attach default primitives:
        # basic primitives:
        robot.attach_primitive(StandPosition(robot), 'stand_position')
        robot.attach_primitive(SitPosition(robot), 'sit_position')

        # Safe primitives:
        robot.attach_primitive(LimitTorque(robot), 'limit_torque')
```

Package your code it properly using [setuptools](https://pythonhosted.org/an_example_pypi_project/setuptools.html).

For a better integration with the Poppy installer scripts, please have in the root of your repo a folder named *software* containing:

- the installation files (setup.py, MANIFEST, LICENCE)
- a folder named poppy\_yourcreaturename containing your actual code

At the end, don't forget to share it to the community! Most interesting creatures will be added to this documentation!
-->

## Installation

Poppy-creature et Poppy-services sont automatiquement installés avec les logiciels Poppy. Pour faire simple, il suffit de taper `pip install poppy-torso` ou `pip install poppy-ergo-jr` par exemple. Référez-vous à la section [Installer les logiciels Poppy](../installation/install-poppy-softwares.md) pour plus de détails.

