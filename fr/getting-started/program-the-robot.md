## Programmer le robot

Les robots Poppy sont conçus pour être faciles à programmer. Trois options sont présentées ici:
* avec [Snap!](#utiliser-snap), une variante de Scratch, un langage de programmation visuel,
* avec [Python](#utiliser-python) pour bénéficier de toute la puissance de l'interface de programmation,
* à travers l'[interface REST](#avec-l-interface-rest) qui vous permet de contrôler les robots Poppy avec d'autres équipements et n'importe quel langage de programmation.

>**Info** Comme pour le reste du projet, toutes nos bibliothèques sont sous licence libre et disponibles sur [GitHub](https://github.com/poppy-project).

<img src="../../en/img/logo/open-source.png" alt="OpenSource Logo" height="100"><img src="../../en/img/logo/gpl-v3.png" alt="GPLv3 Logo" height="100">


### Utiliser Snap

![Snap! logo](../../en/img/logo/snap.png)

Snap_!_ est un langage de programmation visuel - une variante du célèbre langage Scratch. C'est un langage de programmation basé sur des blocs à connecter ensemble, permettant une introduction très complète à l'informatique. Il fonctionne dans votre navigateur Web et est implémenté en Javascript. Nul besoin d'installer quoique ce soit afin de l'utiliser. Il existe sous licence libre et est activement maintenu.

![Exemple de projet Snap utilisant Poppy](../../en/img/snap/presentation.jpg)

Nous avons développé un ensemble de blocs spécifiques pour les robots Poppy qui permettent d'envoyer des commandes moteur et de lire des valeurs en provenance des capteurs de votre robot. Cela vous permet de vous immerser dans le contrôle et la programmation de votre robot sans problèmes de compilation ou de syntaxe. Grâce à la boucle d'interaction continuelle de Snap_!_ il suffit de cliquer sur un bloc pour envoyer la commande associée au robot. Snap_!_ s'applique aussi tout naturellement aux projets plus complexes.

Un [chapitre dédié](../programming/snap.md) vous guidera dans ce que vous pouvez faire avec Snap_!_ et les robots Poppy.

### Utiliser Python

![Python Powered](../../en/img/logo/python.png)

Les bibliothèques Poppy ont été écrites en Python, pour permettre un développement rapide et extensible, et pour bénéficier de toutes les bibliothèques scientifiques existantes. Python est aussi un langage très répandu et largement utilisé dans les sphères pédagogiques et artistiques. En programmant Poppy en Python, vous aurez accès tant aux fonctions de bas niveaux qu'à celles de plus haut niveau.

L'interface de programmation (API) a été conçue pour le prototypage rapide. Créer un robot et commencer à mouvoir ses moteurs ne devrait pas prendre plus de quelques lignes:

```python
from poppy.creatures import PoppyErgoJr

jr = PoppyErgoJr()
jr.m3.goal_position = 30
```

<!-- Note: "Notebook documents" or “notebooks”, all lower case -->
Nous sommes aussi de grands fans du [projet Jupyter](http://jupyter.org) et de ses "Notebooks". Les "Notebooks" sont des documents qui peuvent aussi bien contenir du code Python et du texte formatté que des équations, des images ou des vidéos. Ils peuvent être édités depuis l'interface Web Jupyter ce qui permet aux utilisateurs de programmer les robots Poppy depuis un site web hébergé sur l'ordinateur même du robot. Nous pensons qu'il s'agit là d'un outil puissant pour permettre la création et le partage de code vivant, de visualisations des résultats et du texte explicatif combinés en un seul document.


 <img src="../../en/img/logo/jupyter.png" alt="Jupyter Logo" width="100"> 

La plupart des tutoriels, des expériences et des activités pédagogiques que nous et notre communauté développent sont disponibles sous forme de Notebooks Jupyter.

![Exemple de Notebook](../../en/img/notebook-example.png)

> **Info** Une gallerie de Notebooks mise à jour peut être trouvée [ici](../programming/notebooks.md). Vos contributions sont les bienvenues!

### Avec l'interface REST

En plus des options Snap_!_ et Python, nous voulions fournir un autre moyen d'accéder et de contrôler votre robot depuis n'importe quel appareil ou langage de programmation. Les robots Poppy exhibent une interface REST. Les fonctionnalités principales du robot sont donc accessibles par des requêtes HTTP GET/POST.

D'un point de vue plus pratique, cela vous permet de pouvoir:

* **Ecrire des connecteurs pour contrôler les robots Poppy depuis n'importe quel langage de programmation** (de formidables contributeurs ont déjà écrit des connecteurs [Matlab](https://github.com/joelortizsosa/Connection-Poppy-Matlab) et [Ruby](https://github.com/poppy-project/pypot/tree/master/samples/REST/ruby) ).
* **Concevoir des applications web ** connectées à votre robot, telles que cette [interface de suivi](https://github.com/poppy-project/poppy-monitor) (aussi une contribution!).
* Faire interagir votre **robot avec d'autres appareils connectés** tels qu'un smartphone, des capteurs intelligents,  ou même votre compte Twitter...

> **Attention** L'interface REST est encore en cours de réalisation, elle va certainement changer et est actuellement en manque de documentation ! Pour plus d'informations, veuillez consulter [cette page](https://github.com/poppy-project/pypot/blob/master/REST-APIs.md) ou notre [forum](https://forum.poppy-project.org). Une interface REST bien conçue, stable et bien documentée est attendue pour la prochaine version majeure de notre logiciel.
