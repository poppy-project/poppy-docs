## Configuration des moteurs

Le Ergo Jr est composé de 6 moteurs XL-320 produits par [Robotis](http://support.robotis.com/en/product/dynamixel/xl-series/xl-320.htm). Chacun de ces servomoteurs embarque une carte électronique lui permettant de recevoir différents types de commande (pour modifier sa position, sa vitesse ou son couple...) et de communiquer avec les autres moteurs. Ainsi vous pouvez connecter tous les servomoteurs en chaîne et les commander tous depuis le bout de la chaîne : chaque moteur passera les commandes au suivant.

![XL-320](../../../en/assembly-guides/ergo-jr/img/assembly/xl_320.jpg)

Cependant, pour que les moteurs soient connectés et identifiés sur le même bus ils doivent avoir un identifiant unique. A la sortie de l'usine ils reçoivent tous le même identifiant: 1. Dans ce chapitre nous allons vous expliquer comment attribuer un nouvel identifiant unique à chacun des moteurs.

Nous vous recommandons de configurer les moteurs au fur et à mesure en même temps que l'assemblage du robot. Cela signifie qu'avant d'assembler un nouveau moteur, vous le configurez d'abord avant de  l'assembler de suite sur le reste du robot. Cela nous empêchera d'inverser deux ou plusieurs moteurs. Durant la procédure d'assemblage pas à pas, nous vous signalerons à chaque fois qu'un moteur doit être configuré. Vous pouvez de plus configurer les moteurs à partir de l'interface **Jupyter Notebook**.


### Configurer les moteurs un par un

Comme expliqué précédemment, tous les moteurs ont le même identifiant par défaut. **Seul un moteur à la fois doit être connecté au Bus de Données quand vous les configurez**. Sinon, cela ne fonctionnera pas et tous les moteurs connectés penseront que l'ordre envoyé sur le bus leur est destiné, ils essaieront d'y répondre ce qui sera la cause d'un sacré désordre.

Votre montage électronique pour configurer les moteurs devrait ressembler à ceci:


* un Raspberry Pi
* la carte Pixl par dessus et son alimentation connectée
* Un fil entre la carte Pixl et le moteur que vous souhaitez configurer
* Un cable ethernet entre le Raspberry Pi et votre ordinateur ou votre routeur.

![Configuration des moteurs XL-320 ; un moteur à la fois](../../../en/assembly-guides/ergo-jr/img/motor_one_by_one.jpg)


#### Grâce à l'interface web (plus facile)
<!-- TODO: image du notebook  -->
<!-- The easiest way to use it, is through the notebook interface which will show you at which step of the assembly you have to configure a new motor.
 -->
 <!-- *Note: advanced users may directly use it from the command line terminal. For instance, to configure the motor "m3":* -->
> **Attention**  L'utilitaire Web de configuration des moteurs est toujours en cours de construction.

#### Utilitaire de ligne de commande
Les robots viennent avec un utilitaire en ligne de commande intitulé  `poppy-configure` ; pour l'utiliser vous devez ouvrir un terminal ligne de commande sur votre Raspberry Pi.

Vous pouvez accéder au Raspberry Pi directement depuis votre ordinateur. Pour se faire, ouvrez la page  [http://poppy.local] dans votre navigateur web. Vous verrez la page d'accueil Poppy. Cliquez sur le lien "Python, Terminal" et sélectionnez "New Terminal".
![terminal Jupyter](../../../en/assembly-guides/ergo-jr/img/IHM/new_terminal.png)

Une fois le terminal ouvert, copiez et validez avec la touche "Entrée" la commande ci-dessous: 

```bash
poppy-configure ergo-jr m1
```

Vous venez de configurer le moteur "m1" de votre robot.
Une fois configuré et que vous avez vu le message confirmant que tout s'est bien passé, vous pouvez débrancher le moteur (inutile de débrancher la carte). La configuration du moteur est stockée dans la mémoire interne du moteur même.

> **Info** Les moteurs Poppy Ergo Jr sont appelés m1, m2, m3, m4, m5, m6. Pour configurer les autres moteurs, modifiez la ligne de commande ci-dessus pour remplacer "m1" par le nom du moteur que vous souhaitez configurer.

