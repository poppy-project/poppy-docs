# Programmer le robot

Les robots Poppy sont pensés pour être programmé facilement. Voici les trois principales façons d'y parvenir : * avec la programmation visuelle [Snap!](#using-snap), une variante de Scratch, * avec [Python](#using-python) et la possibilité de s'appuyer sur la puissance de l'API tout entière, * avec [REST API](#through-the-rest-api), qui permet de connecter les robots Poppy à d'autres outils ou d'utiliser n'importe quel langage de programmation.

> **Important** : Tout comme le reste du projet, toute notre bibliothèque logiciel est open source (Licence GPLv3) et disponible sur [GitHub](https://github.com/poppy-project).

## Avec Snap_!_

<img src="../img/logo/snap.png" alt="Logo Snap!" height="200" />

Snap_!_ est un langage de programmation visuel - une variante du déjà très connu language Scratch. C'est un langage de programmation basé sur l'utilisation de blocs facilement déplaçable, qui permet une bonne introduction à l'informatique. It runs in your browser as it is implemented in JavaScript. Vous n'avez pas besoin d'installer quoi que ce soit pour l'utiliser. Il est open source et mis à jour régulièrement.

![Exemple de projet Snap! utilisant un robot Poppy](../img/snap/presentation.png)

Nous avons créé plusieurs blocs propre à l'utilisation des robots Poppy qui permettent de contrôler chaque moteur et de lire les valeurs rapportées par les capteurs de votre robot. This let you to directly jump into controlling and programming your robot without any syntax/compilation issue. Snap_!_ permet d'avoir une interactivité constante entre son interface et le robot. Vous n'avez qu'à cliquer sur un bloc et la commande associée se lance. La simplicité apparente de Snap_!_ n'empêche pas de développer des projets de plus en plus complexes.

Pour découvrir comment foncitonne Snap et la programmation visuelle par blocs avec Poppy, [rdv dans le chapitre dédié](../programming/snap.md).

## Avec Python

<p style="text-align:center">
<img src="../img/logo/python.png" alt="Fonctionnant avec Python" height="170">
</p>

Les librairies logicielles Poppy ont été écrites en Python, ce qui permet un développement et une extensibilité rapide, ainsi que de pouvoir utiliser n'importe quelle autre librairie scientifique. Python est d'ailleurs un langage très connu et largement utilisé dans les domaines de l'éducation et artistiques. En programmant Poppy en Python, vous aurez accès à tous les niveaux d'API, du plus bas au plus élevé.

L'API a été pensée pour du prototypage très rapide. Créer un robot et faire bouger ses moteurs ne doit pas prendre plus de quelques lignes :

```python
from pypot.creatures import PoppyErgoJr

jr = PoppyErgoJr()
jr.m3.goal_position = 30
```

<!-- Note: "Notebook documents" or “notebooks”, all lower case --> Nous aimons énormément le 

[Jupyter Project](http://jupyter.org) et de ses notebooks. Les Notebooks sont des documents qui contiennent à la fois du code en Python et des éléments textuels tels que des équations, des photos, des vidéos. Ils peuvent être édités à partir de l'interface Jupyter Web, ce qui permet aux utilisateurs de programmer les robots Poppy directement à partir d'un site hébergé par l'ordinateur du robot. Nous pensons qu’il s’agit d’un outil puissant permettant la création et le partage de code en direct, la visualisation des résultats et des textes explicatifs, le tout combiné en un seul document.

<img src="../img/logo/jupyter.png" alt="Logo Jupyter" height="150" />

La plupart des tutoriels, expérimentations et activités pédagogiques que la communauté Poppy et nous proposons sont disponibles sous forme de notebooks.

![Exemple de Notebook](../img/notebook-example.png)

> **Info** Vous pouvez retrouvez une mise à jour de la galerie de noteboks [ici](../programming/notebooks.md). Toute contibution est la bienvenue !

## Avec ROS (Robot Operating System)

poru les utilisateurs avancés, les robots Poppy peuvent aussi être programmés avec ROS Noetic. Consultez le [chapitre dédié](../programming/ros.md).

## Avec l'API REST

En plus de Snap_!_ et de Python, nous voulions donner la possibilité de recourir à d'autres options pour accéder et contrôler votre robot depuis n'importe quel système ou langage de programmation. Les robots Poppy fournissent une API REST. Les fonctionnalités les plus importantes sont accessibles depuis les requêtes HTTP GET/POST.

D'un point vue plus pratique, cela vous permet de :

* **créez des passerelles pour controler le robot Poppy dans n'importe quel langage** (des contributeurs géniaux ont déjà écrit des wrappers sur [Matlab](https://github.com/joelortizsosa/Connection-Poppy-Matlab) et [Ruby](https://github.com/poppy-project/pypot/tree/master/samples/REST/ruby)).
* **Créez des des applications web** connectées à votre robot, telle qu'une [interface moniteur](https://github.com/poppy-project/poppy-monitor) (encore une contribution !).
* Faites intéragir **votre robot avec d'autres objets connectés** tels que les smartphones, les capteurs intelligent, ou encore votre compte Twitter...

