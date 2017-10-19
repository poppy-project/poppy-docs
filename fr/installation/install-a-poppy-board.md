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

Redémarrez le Raspberry Pi après la fin de l’installation. Le nom d’hôte, utilisateur par défaut et le mot de passe sera « poppy » (`ssh poppy@poppy.local` mot de passe = poppy). You can test your installation with the web interface in your web browser http://poppy.local.

## Install a Poppy Torso / Humanoid on a Odroid U3 or Odroid XU4

These boards come with a working Ubuntu base image on the MMC you can use the install scripts on it. In the case you have not a fresh installation you have download and burn default system images: * [Ubuntu 14.04 for Odroid U3](http://odroid.com/dokuwiki/doku.php?id=en:u3_release_linux_ubuntu) * [Ubuntu 14.04 for Odroid XU3/XU4](http://odroid.in/ubuntu_14.04lts/ubuntu-14.04.1lts-lubuntu-odroid-xu3-20150212.img.xz)

To burn it on the MMC/SD-card, look at the [startup section](burn-an-image-file.md#write-an-image-to-the-sd-card).

Now you have a clean and fresh installation, you can mount your memory card to your board, plug your ethernet connection, and power up.

Login to the board in SSH: `ssh odroid@odroid.local`, password=odroid.

> **Info** If you are using Windows, you have no native SSH client ; you have to download and install [putty](http://www.putty.org/) or [mobaxterm](http://mobaxterm.mobatek.net/) to use SSH.

Be sure that your board is connected to the Internet, download and run poppy_setup.sh (replace 'poppy-humanoid' below with poppy-torso' if you want to install a Poppy Torso robot):

    wget https://raw.githubusercontent.com/poppy-project/odroid-poppysetup/master/poppy_setup.sh -O poppy_setup.sh
    sudo bash poppy_setup.sh poppy-humanoid
    

You should lose your ssh connection because of the board reboot. This reboot is needed to proceed to the finalisation of the partition resizing. Now your board should install all the poppy environment. **Please do not unpower the board or shut-it down.**

You can see the installation process by reconnecting you to your board with your new poppy account: `ssh poppy@poppy.local` password=poppy. **Because of the compilation of heavy Python packages (Scipy, Numpy) it can take more than 1 hour to complete.**

A process will automatically take you terminal and print the installation output. You can leave it with `ctrl+c`. You can get back this print by reading the install_log file:

    tail -f install_log
    

Be patient...

At the end of the installation, your board will reboot again. You can look at the log `tail -f install_log`, if everything ended well, last lines should be:

    System install complete!
    Please share your experiences with the community : https://forum.poppy-project.org/
    

> **Note:** Si vous n'êtes pas sûr de ce qui se passe, vous pouvez voir si le processus d'installation est en cours d'exécution avec: `ps up $(pgrep -f 'poppy_launcher.sh')`

Le nom d’hôte, utilisateur par défaut et le mot de passe sera « poppy » (`ssh poppy@poppy.local` mot de passe = poppy). You can test your installation with the web interface in your web browser http://poppy.local.