# 2. Assemblage électronique

Avant de commencer à construire votre robot, nous allongs d'abord brancher l'électronique et le connecter à l'ordinateur. La raison de cette connexion anticipée est que nous aurons besoin du logiciel du robot pendant l'assemblage : celui-ci permet de configurer les moteurs.

## 2.1. Insérer la carte micro SD dans la Raspberry Pi

Si vous avez acheté un kit, le logiciel Poppy est pré-chargé sur votre carte SD. Si ce n'est pas le cas, vous aurez besoin de "flasher" votre carte micro SD avec l'image du logiciel Poppy Ergo Jr. La procédure est décrite [à cet emplacement](../../installation/burn-an-image-file.md).

Ensuite, insérez la carte micro SD dans la Raspberry Pi :
![Raspberry Pi micro-SD](img/electronic/rpi-sd.jpg)

## 2.2. Monter la carte Pixl

La [carte Pixl](http://www.generationrobots.com/en/402420-carte-pixl.html) a 2 rôles :
* Alimenter le robot complet via un adaptateur secteur (ou via une batterie bien que aucun support de batterie n'est vendu avec le kit)
* Communiquer avec les moteurs XL-320 via la Raspberry Pi

Insérez minutieusement la carte Pixl au bout des 40 broches dépassant de la Raspberry Pi :
![pixl](img/electronic/pixl-step_1-2.jpg)

Utilisez l'entretoise et la vis fournies dans votre kit de manière à ce que la carte Pixl soit solidement branchée sur la Raspberry Pi : à gauche sur les broches, à droite sur l'entretoise. Si elle est lâche, cela pourrait causer des redémarrage intempesifs de votre robot avec le temps.

Avant d'aller plus loin, vérifiez avec insistance que votre carte Pixl :
* est connectée à la toute fin sur les 10 dernières broches de la Raspberry Pi (vérifiez que vous ne connectez pas seulement 5 broches sur les 10)
* est dirigée vers l'intérieur de la Raspberry Pi
* est montée **exactement** comme sur l'image ci-après

![pixl](https://raw.githubusercontent.com/poppy-project/pixl/master/images/rpi_pixl.jpg)


## 2.3. Avertissements

Veuillez lire avec précaution ces recommandations pour éviter de dégrader votre matériel :

> **Caution**  **Déconnectez l'alimentation du robot avant de (dé)monter la carte Pixel sur la Raspberry Pi** cette carte n'est pas faite pour être branchée "à chaud", il y a un risque de l'endommager si vous le faîtes

> **N'utilisez jamais plusieurs sources d'alimentation en même temps** : quand l'alimentation secteur du robot est branchée, n'essayez pas d'alimenter la Raspberry Pi avec d'autres sources de courant tels qu'un câble micro-USB ou des batteries, vous l'endommageriez immédiatement

> **Votre carte Pixl doit être solidement attachée** : Au premier usage, vous pourriez penser qu'insérer la carte Pixl sur les 10 broches est suffisant pour la maintenir mécaniquement ; cependant à la longue, du jeu dans cette connexion pourrait apparaître et causer le redméarrage intempestif du robot pendant sa manipulation : assurez-vous d'utiliser une entretoise et une vis pour fixer la Pixl

## 2.4. Premier démarrage !

Ensuite, branchez un câble moteur noir (fourni dans les sachets de moteur) sur la Pixl et laissez l'autre côté du câble déconnecté. Enfin connectez l'adaptateur secteur sur une prise de courant.
![pixl](img/electronic/pixl-step_3-4-5.jpg)

Faîtes ensuite attention à ces 2 LED de la Raspberry Pi :
* la **LED rouge (PWR = power = alimentation)** doit rester allumée de manière fixe ; ce qui signifie que la carte est correctement alimentée. Si ce n'est pas le cas, vérifiez toutes les connexions, particulièrement que la carte Pixl est correctement montée
- la **LED verte (ACT = activité)** doit vaciller pendant environ 45 secondes, ce qui signifie que la carte est en train de démarrer. Si ce n'est pas le cas, vérifiez que la carte SD est bien munie d'une image valide du logiciel, ou bien [essayez de la re-flasher](../../installation/burn-an-image-file.md)

Si vous avez vu la LED verte vaciller pendant environ 45 secondes en branchant le robot, continuez à l'étape suivante pour configurer les moteurs ...

[**>> Etape suivante : configurer mes moteurs**](motor-configuration.md)