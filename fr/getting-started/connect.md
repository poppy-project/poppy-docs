# Démarrer et connecter le robot

Dans cette section, nous allons décrire comment démarrer votre robot et vous donner un aperçu des possibilités pour y accéder.

## Configurer le logiciel

Les créatures Poppy viennent avec une carte embarquée dont le travail est de contrôler les moteurs et d'accéder aux capteurs. Pour une plus grande simplicité, cette carte embarquée peut être contactée à travers une interface Web. cela facilite le contrôle du robot depuis votre propre ordinateur ou une tablette sans avoir à télécharger ou installer quoique ce soit.

Il y a plusieurs méthodes pour configurer la carte embarquée de votre robot Poppy :

* [**la méthode simple**](#simplement-utiliser-la-carte-sd-poppy): utilisez une image ISO toute prête et transférez la sur une carte SD
* [**la méthode avancée**](#plus-avance-tout-installer-vous-meme): tout installer vous-même

<!-- TODO: corriger le lien ci-desous pour le setup de la simulation -->

> **Note** Si vous prévoyez d'utiliser un robot simulé, vous devez installer le logiciel sur votre propre ordinauter. Suivez les instructions pour [configurer la simulation](README.md#you-want-to-try-poppy-robots-in-a-simulator-or-in-a-web-viewer).

### Simplement: utiliser la Carte SD Poppy

Le moyen le plus simple et le plus rapide - de loin - est d'utiliser des images ISO déjà faites pour les cartes SD. Ces images ISO viennent avec tout le nécessaire déjà pré-installé pour votre robot Poppy. C'est aussi un bon moyen de vous assurer que vous utilisez exactement le même logiciel que nous Ainsi vous éviterez de nombreux problèmes.

> **Note** Les kits de robotique Poppy viennent avec une carte SD prête à l'emploi. Ainsi vous n'avez rien de spécial à faire.

Les images ISO peuvent être trouvées avec les distributions de chaque créature :

* [pour le Poppy Ergo Jr](https://github.com/poppy-project/poppy-ergo-jr/releases)
* [pour le Torse Poppy](https://github.com/poppy-project/poppy-torso/releases)
* [pour l'Humanoïde Poppy](https://github.com/poppy-project/poppy-humanoid/releases/)

Elles peuvent être écrites sur une carte SD d'au moins 8 Go en utilisant un outil classique. Une fois la carte SD prête, vous n'avez qu'à l'insérer dans votre carte embarquée. Vous pouvez ensuite mettre votre robot sous tension, il devrait démarrer et vous pourrez ainsi vous connecter à son interface web.

> **Info** Plus de détails dans la [section Démarrage](../installation/README.md).

### Plus avancé: tout installer vous-même

La méthode avancée consiste à installer tout le nécessaire depuis zéro. Elle suit la même procédure que nous utilisons pour générer les images ISO pour cartes SD. Nous mentionnons cette méthode car elle peut s'avérer utile si :

* **vous travaillez avec un robot simulé** et vous devez donc installer tout le logiciel nécessaire sur votre ordinateur, cette procédure est un bon endroit pour voir comment le faire sur un Raspberry Pi et l'adapter pour un autre ordinateur,
* vous voulez modifier l'environnement de travail,
* vous voulez simplement comprendre comment tout fonctionne.

> **Attention** Nous essayons de garder cette procédure d'installation aussi générique que possible. Pour autant, certains détails peuvent varier en fonction de votre système d'exploitation ou de votre ordinateur. De plus, l'installation depuis zéro demande quelques connaissances de base pour installer et configurer un environnement Python.

Suivant ce que vous souhaitez accomplir, toutes les étapes ne sont pas nécessairement requises. En particulier, si vous souhaitez contrôler un robot simulé, il suffit d'installer les bibliothèques Python pour Poppy.

> **Info** Plus de détails vous sont fournis dans le chapitre [Installation pour utilisateurs avancés](../installation/README.md).

### Configurer le réseau

Une fois que votre Poppy est assemblé et son logiciel prêt, l'étape suivante est de le connecter à un réseau. Le but est de vous permettre d'accéder au robot depuis votre ordinateur ou votre tablette/smartphone, de le contrôler et de le programmer.

Il y a deux manières de connecter votre robot à votre ordinateur/tablette/smartphone:
* Connecter le robot et l'ordinateur au même réseau (par exemple la box wifi de votre domicile ou votre établissement scolaire).
* Connecter directement votre robot à votre ordinateur par l'intermédiaire d'un câble ethernet.

> **Attention** Bien que connecter le robot et l'ordinateur marche pour la plupart des utilisateurs, il semble que dans certains cas cela ne fonctionne pas.

Pour trouver l'adresse de votre robot sur le réseau, nous utilisons le [protocole standard Zeroconf](https://fr.wikipedia.org/wiki/Zeroconf). Il vous permet d'utiliser le nom d'hôte: *"poppy.local"* en tant qu'adresse. Cela devrait fonctionner sans aucune configuration sous Mac OS et GNU/Linux. Mais cela nécessitera d'installer les [*Services d'impression Bonjour*](https://support.apple.com/kb/DL999) sous Windows. Si vous préférez, vous pouvez utiliser l'adresse IP assignée à votre robot à la place. Si vous n'êtes pas administrateur de votre réseau cela peut être assez difficile à déterminer. Dans ce cas, utilisez de préférence la première procédure.

Pour vérifier que tout est configuré correctement, vous pouvez aller à l'adresse suivante avec votre navigateur web favori : [http://poppy.local/](http://poppy.local). Vous pouvez remplacer *poppy.local* par l'adresse IP de votre robot (par exemple http://192.168.0.42).

> **Attention** Si vous n'êtes pas familier avec la configuration des réseaux ou si vous n'avez aucune idée de ce que le paragraphe précédent a tenté de vous expliquer, il est préférable de consulter un ingénieur réseau afin de compléter cette étape.

### Utiliser l'interface Web

L'interface web est le point central pour contrôler, programmer et configurer votre robot. Elle peut être utilisée pour:
* Suivre l'activité du robot
* Le programmer en utilisant [Snap!](http://snap.berkeley.edu)
* Le programmer en utilisant [Python](https://www.python.org)
* Configurer le robot (changer son nom, activer ou désactiver la caméra, le mettre à jour)
* Remettre à zéro et arrêter le robot.

Pour accéder à cette interface, il suffit d'aller à l'URL suivante avec votre navigateur Web favori:

* http://poppy.local (si vous avez changé le nom de votre robot, remplacez simplement *poppy* par son nouveau nom)
* ou utilisez son adresse IP.

Vous devriez voir quelque chose comme:

![Home Page](../../en/img/poppy_home.png)
Les boutons peuvent être utilisés pour naviguer vers les différentes fonctionnalités. Par exemple, si vous cliquez sur le *Monitor and Control*, vous accéderez à l'application de monitoring:

![Interface de Monitoring](./../en/img/poppy_monitor.png)

Cela vous permettra d'allumer ou d'éteindre les moteurs de votre robot, de suivre leur activité, et leur comportement d'allumage et d'extinction.

Le bouton *What happened* est là où vous devriez regarder pour plus d'information sur ce qui s'est mal passé. Voici une capture d'écran de ce que vous devriez voir si tout se passe comme prévu:

![Capture d'écran de l'interface web log](../../en/img/web-logs.png)
