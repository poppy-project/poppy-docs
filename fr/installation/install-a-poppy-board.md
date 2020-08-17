# Installer un ordinateur embarqué pour un robot Poppy

> **Mise en garde** : ce chapitre est destiné seulement aux personnes qui veulent créer de toutes pièces une image système pour Raspberry Pi ou Odroid. **Il est fortement conseillé** de simplement [graver une image système fournie par l'équipe Poppy pour installer les logiciels sur votre robot](burn-an-image-file.md).

Pour installer une carte embarquée pour Poppy, nous partons d’une distribution Linux standard (Debian ou Ubuntu), nous supprimons les logiciels inutiles et lançons quelques scripts.

**Ayez en tête pas que nos scripts d’installation n'ont pas été conçu pour les utilisateurs finaux : ils ne sont pas forcément à jour et il n’y a presque aucun messages d’erreurs pour vous guider.** Si vous rencontrez des problèmes avec ces scripts, vous pouvez poster un message dans la [section d’aide](https://forum.poppy-project.org/c/support) du forum Poppy.

## Pour un Poppy Ergo Jr / Raspberry Pi

Les cartes SD Raspberry Pi du commerce sont pré-installées avec le système d'exploitation NOOBS, vous devez tout d’abord installer un système d'exploitation Raspbian.

Téléchargez l’image de votre système : * [Raspbian Jessie](https://www.raspberrypi.org/downloads/raspbian/)

Écrivez l’image sur la carte SD avec un outil d'écriture de disque comme cela est expliqué dans la [section démarrage](burn-an-image-file.md#write-an-image-to-the-sd-card).

Ajoutez un nom de fichier vide « .ssh » dans la partition "boot" pour activer le SSH.

Se connecter sur l'ordinateur embarqué par SSH : `ssh pi@raspberrypi.local`, mot de passe = raspberry.

> **Note** Remarque : Si vous utilisez Windows, vous n’avez pas de client SSH préinstallé. Vous devez télécharger et installer [putty](http://www.putty.org/) ou [mobaxterm](http://mobaxterm.mobatek.net/) afin d’utiliser SSH.

Vous devrez vous assurer que vous avez assez d’espace libre sur votre Raspberry Pi. Le moyen le plus simple est d’utiliser le script raspi-config pour étendre votre partition et occuper tout l'espace disque disponible sur la carte SD. Connectez-vous sur votre Raspberry et exécutez (vous devrez redémarrer ensuite) :

```bash
sudo raspi-config
```

Assurez-vous que votre carte est connectée à Internet et utilisez le programme d’installation [« raspoppy »](https://github.com/poppy-project/raspoppy) :

```bash
curl -L https://raw.githubusercontent.com/poppy-project/raspoppy/master/raspoppyfication.sh | bash -s "poppy-ergo-jr"
```

> **Note** Changez`poppy-ergo-jr` dans la commande ci-dessus par la créature Poppy que vous désirez installer sur votre Raspberry Pi.

Redémarrez le Raspberry Pi après la fin de l’installation. Le nom d’hôte, utilisateur par défaut et le mot de passe sera « poppy » (`ssh poppy@poppy.local` mot de passe = poppy). Vous pouvez tester votre installation avec l’interface web dans votre navigateur web en allant sur http://poppy.local.

## Installer un Poppy Torso / Humanoïde sur un Odroid U3 ou Odroid XU4

Ces ordinateurs embarqués sont équipés de base sur la mémoire MMC d'une image système Ubuntu fonctionnelle, vous pouvez utiliser les scripts d'installation sur celle-ci. Dans le cas où vous n'avez pas de nouvelle installation, vous devez télécharger et graver des images système par défaut suivante: 

* Ubuntu 14,04 pour Odroid U3
* [Ubuntu 14,04 pour Odroid XU3/XU4 ](http://odroid.in/ubuntu_14.04lts/ubuntu-14.04.1lts-lubuntu-odroid-xu3-20150212.img.xz)

Pour le graver le système d'exploitation sur la carte MMC/SD, regardez la [section de démarrage](burn-an-image-file.md#write-an-image-to-the-sd-card).

Maintenant que vous avez une installation fraichement installée, vous pouvez insérer votre carte mémoire dans votre ordinateur embarqué, brancher votre connexion Ethernet, et le mettre sous tension.

Connectez-vous à la carte en SSH: `ssh odroid@odroid.local`, Mot de passe = odroid.

> **Info** Si vous utilisez Windows, vous n'avez pas de client SSH natif; vous devez télécharger et installer [putty](http://www.putty.org/) ou [mobaxterm](http://mobaxterm.mobatek.net/) pour utiliser le protocole SSH.

Assurez-vous que votre carte est connectée à Internet, télécharger et exécuter poppy_setup.sh (remplacer 'poppy-humanoïde' ci-dessous par 'poppy-torso' si vous voulez installer un robot Poppy Torso):

    wget https://raw.githubusercontent.com/poppy-project/odroid-poppysetup/master/poppy_setup.sh -O poppy_setup.sh sudo bash poppy_setup.sh poppy-humanoid
    

Vous devriez perdre votre connexion SSH en raison du redémarrage de la carte. Ce redémarrage est nécessaire pour procéder à la finalisation du redimensionnement de la partition. Maintenant, votre carte embarqué devrait installer l'environnement Poppy. **S'il vous plaît, n’éteignez ni ne coupez pas l'alimentation de la carte.**

Vous pouvez voir le processus d'installation en vous rebranchant à votre carte avec votre nouveau compte poppy: `ssh poppy@poppy.local` Mot de passe = poppy. **En raison de la compilation de lourds paquets Python (Scipy, Numpy), le processus peut prendre plus d'une heure avant de ce terminer.**

Un processus va automatiquement prendre le contrôle de votre terminal et afficher les informations d'installation. Vous pouvez sortir avec `Ctrl + c`. Vous pouvez récupérer les informations en lisant le fichier install_log:

    tail -f install_log
    

Soyez patient ...

À la fin de l'installation, votre ordinateur redémarrera. Vous pouvez consulter le log `tail-f install_log`, si tout s'est bien terminé, les dernières lignes devraient être:

    System install complete!
    Please share your experiences with the community : https://forum.poppy-project.org/
    

> **Note:** Si vous n'êtes pas sûr de ce qui se passe, vous pouvez voir si le processus d'installation est en cours d'exécution avec: `ps up $(pgrep -f 'poppy_launcher.sh')`

Le nom d’hôte, utilisateur par défaut et le mot de passe sera « poppy » (`ssh poppy@poppy.local` mot de passe = poppy). Vous pouvez tester votre installation avec l’interface web dans votre navigateur web en allant sur http://poppy.local.