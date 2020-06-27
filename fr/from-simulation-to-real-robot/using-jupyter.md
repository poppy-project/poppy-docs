# À l’aide des notebooks Jupyter en Python

L'un des avantages de travailler avec les notebooks Jupyter est de pouvoir les utiliser dans une approche client/serveur.   
Chaque robot Poppy héberge un serveur Jupyter accessible via l'interface web (voir la [section démarrage rapide](../getting-started/program-the-robot.md) pour plus de détails).

Lorsque vous travaillez via une simulation, tout est géré et stocké sur votre ordinateur. Lorsque vous travaillez avec un robot physique vous pouvez le programmer depuis un navigateur web sur votre propre ordinateur, mais vos notebooks Jupyter sont en fait stockés et exécutés dans le robot.

Donc pour passer de la simulation au robot physique, vous devez passer de votre instance locale Jupyter à l'instance hébergée par le robot. Les étapes sont décrites ci-dessous.

## Se connecter à Jupyter sur le robot

Une fois connecté à l'interface web du robot *http://poppy.local* (nous supposerons ici que son nom d’hôte est *poppy*, remplacez-le par le nouveau nom d’hôte si vous l’avez changé), vous devriez voir un lien **ouvrir notebook Ipython**.

![ouvrir le lien du notebook](../img/poppy_home.png)

Lorsque vous cliquez dessus, Jupyter démarre sur le robot et vous redirige vers le serveur Web Jupyter. Vous devriez alors voir la racine du dossier notebook hébergé sur le robot :

![dossier de notebook sur poppy](../img/jupyter/root-folder.jpg)

C'est ici que vous pouvez mettre vos propre notebooks. Bien sûr vous pouvez créer des dossier, les organiser à souhait etc.

*Note : Si vous avez besoin d'un accès plus précis ou d'une configuration plus avancée (telle qu'une autorisation), vous devez vous connecter au robot directement en utilisant SSH.*

## Télécharger un notebook

Une fois connecté au serveur Jupyter hébergé par le robot, vous pouvez directement utiliser l’interface Jupyter pour le téléverser de nouveaux notebooks.

![téléverser les nouveaux notebooks](../img/jupyter/upload-notebooks.jpg)

Le bouton rond permet de *télécharger* votre notebook local, stocké sur votre propre ordinateur, au robot. Ils peuvent alors être directement exécuté sur le robot.

*Sachez que pour le moment, nous ne traitons pas avec des autorisations ou des sessions (comme [JupyterHub](https://github.com/jupyter/jupyterhub) par exemple), et donc toute personne ayant accès au robot peut utiliser ou supprimer tous notebooks stockés dans le robot.*

## Adapter votre code

Il y a peu d’endroits où vous devez réellement modifier votre code pour qu’il fonctionne avec un robot physique. Nous essayons de minimiser l’effort nécessaire dans la mesure du possible, cependant certaines étapes sont encore nécessaires.

### Instanciation

Lorsque vous créez le robot, vous devez en fait préciser si vous êtes disposé à travailler avec un robot physique ou un robot simulé. Cela se fait simplement via un paramètre. Par exemple :

En travaillant avec V-REP :

```python
from pypot.creatures import PoppyHumanoid

poppy = PoppyHumanoid(simulator='vrep')
```

En travaillant avec le robot physique :

```python
from pypot.creatures import PoppyHumanoid

poppy = PoppyHumanoid()
```

Bien évidemment, cela fonctionne pour tous les robots Poppy : Humanoid, Torso et Ergo Jr.

Il s’agit de la plupart des modifications que vous aurez à faire.

### Les APIs spécifiques

Une partie de l'API dépend des plateformes. Par exemple, en utilisant V-REP vous avez accès aux fonctionnalités de *tracking* qui vous permet de récupérer n'importe quelle position 3D de l'objet. Mais cette méthode n'a pas d'équivalent dans le monde réel et n'est donc pas réalisable avec un robot physique.

Utiliser la propriété *simulée* est un bon entrainement si vous souhaitez écrire du code compatible pour les deux cas. Elle est automatiquement définie à la valeur correcte selon la façon dont vous instanciez votre robot. Par exemple,

```python
poppy = PoppyHumanoid(simulator='vrep')

def reset_position():
    if poppy.simulated:
        poppy.reset_simulation()
    else:
        print('Ask one internship student to put the robot back in its origin position.')
        time.sleep(10)
```

## Version et bibliothèques tierces

Le principal inconvénient de travail avec le mode client/serveur est que les versions de vos logiciels installés localement peuvent différer de celui installé sur le robot.

La version de Python installée sur le robot est Python 2.7 et dispose de la plupart des principales bibliothèques scientifiques (numpy, scipy, matplotlib, opencv). Une liste exhaustive des packages Python installés sera disponible bientôt < !--(TODO !)-->. Pour le moment, le moyen le plus simple d'y parvenir est d’utilisé un *terminal notebook* qui peut être exécuté directement depuis l’interface de Jupyter.

![Ouvrir un terminal](../img/jupyter/open-terminal.jpg)

![Terminal Jupyter](../img/jupyter/terminal.jpg)

En utilisant la même technique, vous pouvez installer des bibliothèques tierces directement sur le robot. Les outils utilitaire [pip](https://pip.readthedocs.org) et [conda](http://conda.pydata.org/docs/) sont installés et devraient être utilisés lorsque cela est possible.

* Notez que la carte embarquée repose sur une architecture armv7 et donc certaines bibliothèques peuvent être difficiles à compiler. Nous maintenons une liste de recettes conda spécialement conçu pour cette plate-forme [ici](https://anaconda.org/poppy-project).   
Plus de contributions sont les bienvenues ! *