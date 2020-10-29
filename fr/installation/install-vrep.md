# Installation de l'environnement de simulation robotique CoppeliaSim (CoppeliaSim)

> **Info** Vous devez installer les [logiciels Poppy](install-poppy-softwares.md) avant d'installer l'outil de simulation robotique CoppeliaSim.

[ CoppeliaSim](http://www.coppeliarobotics.com) est un simulateur robotique efficace principalement Open source (GNU GPL), qui est distribué sous une licence gratuite pour les établissements scolaires et propose une licence commerciale pour les autres secteurs. Il existe également une version *PRO EVAL* qui empêche seulement de sauvegarder. Vous n'avez pas besoin de sauvegarder la scène CoppeliaSim pour l'utiliser avec pypot (la bibliothèque Python conçue pour les créatures Poppy), nous vous suggérons donc d'installer cette version sans vous inquiéter d'éventuelles violations de droit d'auteur. Si vous souhaitez modifier la scène CoppeliaSim pour ajouter ou personnaliser une créature Poppy, vous devrez utiliser la version PRO ou la version EDU (la licence éducative).

## Installation de CoppeliaSim sous Windows

[Télécharger  CoppeliaSim](http://www.coppeliarobotics.com/) PRO EVAL ou EDU (si vous êtes un établissement scolaire). CoppeliaSim n'étant pas signé, vous devrez valider la fenêtre popup SmartScreen (sur Windows 10) pour commencer l'installation. ![VREP_smartscreen](../img/vrep/vrep2.png)

Pendant l'installation, veillez à installer * Visual C++ Redistributable 2010 * et * Visual C++ Redistributable 2012 *. ![cpp2010](../img/vrep/lucvincent/luc_vincent-056.png)

![cpp2012](../img/vrep/lucvincent/luc_vincent-059.png)

Si les versions de * Visual C++ Redistributable 2010 * ou * Visual C++ Redistributable 2012 * sont déjà présent sur votre ordinateur, il est conseillé de les "réparer" (il s'agit du processus de ré-installation).

![cpp2012](../img/vrep/lucvincent/luc_vincent-060.png)

**Après l'installation, vous pouvez[ réaliser un test pour vérifier si CoppeliaSim fonctionne bien ](#test-your-installation) **.

## Installation sous MAC OSX

<!-- TODO -->

> **Attention** Ce paragraphe doit être complété. Votre aide est la bienvenue !

## Installation sous GNU/Linux

<!-- TODO -->

> **Attention** Ce paragraphe doit être complété. Votre aide est la bienvenue !

## Testez votre installation

Ouvrez CoppeliaSim avec un double clic sur l'icône du bureau. Ouvrez l'invite de commande de votre distribution Python (appelé l'*Invite de commande* de Windows), tapez et validez en appuyant sur entrée pour exécuter la commande ci-dessous :

```bash
poppy-services --snap --vrep --no-browser poppy-torso`
```

Après une ou deux secondes, vous devez avoir une erreur dans votre invite de commande comme le montre l'image ci-dessous. ![VREP_terminal](../img/vrep/vrep3_1.png)

Si vous passez à la fenêtre CoppeliaSim, un popup apparaît pour vous informer que la simulation utilise des paramètres personnalisés. Cette popup bloque la communication vers l'API Python de CoppeliaSim. **Vous devez vérifier que la case "Do not show this message again" est bien coché et appuyez sur "Ok".** ![VREP_checkbox](../img/vrep/vrep3_2.png)

Revenez vers l'invite de commande Windows. Vous devez répéter la dernière commande (`poppy-services --snap --vrep --no-browser poppy-torso`) et cliquez de nouveau sur la fenêtre popup CoppeliaSim (avec la case cochée). **Ce processus devra être répété *trois fois* pour que cela fonctionne bien !**

> **Info** Pour vous éviter de retaper la même commande encore et encore, vous pouvez appuyer sur la flèche du haut du clavier pour appeler la dernière ligne entrée.

Lorsque la configuration de CoppeliaSim est finie, vous pouvez exécuter la dernière commande sans la dernière partie : "--no-browser".

    poppy-services --snap --vrep poppy-torso
    

Si vous voyez une fenêtre popup de votre pare-feu, comme l'image ci-dessous, assurez-vous de vérifier que "réseau privé" est coché.

![pare-feu](../img/vrep/vrep4.png)

Si tout fonctionne bien, un nouvel onglet a été ouvert sur votre navigateur Web par défaut. <-TODO: lien doc-> Vous pouvez débuter la programmation de votre robot dans Snap_! _ ou en Python.

![jupyter notebook](../img/vrep/lucvincent/luc_vincent-070.jpg)