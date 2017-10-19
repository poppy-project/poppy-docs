# Installer le logiciel Poppy

> **Mise en garde** Si vous souhaitez installer le logiciel d’un robot tangible sur une carte embarquée de type Raspberry Pi, allez plutôt au [chapitre de démarrage](burn-an-image-file.md).

Cette section vous guidera pour installer le logiciel Poppy sur votre ordinateur personnel. Elle est utile **seulement** si vous êtes dans l’une de ces situations : * vous souhaitez contrôler un robot simulé. * Vous souhaitez contrôler une créature Poppy depuis votre ordinateur **sans** utiliser la carte embarquée fournie (Odroid ou Raspberry Pi).

Les créatures Poppy sont contrôlées par du code écrit en langage Python. Selon votre système d’exploitation, vous devrez installer Python et dans tous les cas, vous devrez installer les bibliothèques logicielles requises. Si vous faites vos premiers pas avec Python et que vous souhaitez installer un environnement Python complet conçu pour l'informatique scientifique, **nous vous suggérons d’utiliser [la distribution Python Anaconda](https://www.continuum.io/why-anaconda)**.

## Installer Python et le logiciel Poppy sur Windows

Si vous voulez suivre une vidéo explicative étape par étape de l’installation de Anaconda sur Windows, vous pouvez consulter [ces vidéos](https://www.youtube.com/watch?v=kw9lQwdOlOs&list=PLT6NsCw8bf8T5FG2LGk2y_KTdexi8A5BN) (il s’agit d’une playlist YouTube). <iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLT6NsCw8bf8T5FG2LGk2y_KTdexi8A5BN" frameborder="0" allowfullscreen mark="crwd-mark"></iframe> 

### Installer Python et les logiciels Poppy sur Windows

Nous encourageons l’utilisation de la distribution Python Anaconda. Toutefois, si vous avez déjà installé une distribution Python telle que Canopy (livrée avec paquets scientifiques), vous pouvez directement [installer les logiciels Poppy](#install-python-and-poppy-softwares-on-windows).

> **Info** Poppy software libraries work in Python 2.7 and Python 3.3+. If you have no ideas on which version to install, we suggest you to use Python 2.7 as we develop in this version.

#### Anaconda Python distribution

[Download Anaconda](https://www.continuum.io/downloads) Python distribution (400 MB) [here for 64-bit](https://repo.continuum.io/archive/Anaconda2-4.0.0-Windows-x86_64.exe) computer or [here for 32-bit](https://repo.continuum.io/archive/Anaconda2-4.0.0-Windows-x86.exe).

Install it by clicking on "next" at each step. If you intend to install Anaconda for all users of your computer, be sure to select "all users".

![Anaconda all users](../img/python/lucvincent/luc_vincent-012.png).

It is also very important that the two check-boxes of the PATH and the default Python are checked.

![Anaconda install](../img/python/anaconda_install_path.png)

Now you have a Python distribution, you are ready to [install Poppy software](#install-python-and-poppy-softwares-on-windows).

#### Miniconda Python (alternative to Anaconda)

Miniconda is a "light" version of Anaconda which contain only Python and the conda package manager. You can install it **instead of Anaconda** and save a lot of disk space (25 Mo vs 400 Mo), but you will have to do another step in the install process, and you will not have Jupyter notebook shortcut on the desktop. Download miniconda [here for 64-bit](https://repo.continuum.io/miniconda/Miniconda-latest-Windows-x86_64.exe) computer or [here for 32-bit](https://repo.continuum.io/miniconda/Miniconda-latest-Windows-x86.exe) computer.

Install it and be sure that the two check-boxes of the PATH and the default Python are checked.

Open the Command Prompt (press the windows key and type "Command Prompt"), type and press Enter to execute the command below:

    conda install numpy scipy notebook jupyter matplotlib
    

Now you have a Python distribution ready to [install Poppy software](#install-python-and-poppy-softwares-on-windows).

### Install Poppy software on Windows

Open the prompt of your Python Distribution (called *Anaconda Prompt* for Anaconda) or the *Command Prompt* of Windows, type and press Enter to execute the command below: ![Anaconda all users](../img/python/lucvincent/luc_vincent-031.png).

> **Note** Substitute "poppy-ergo-jr" with "poppy-torso" or "poppy-humanoid" to install respectively a Poppy Torso or a Poppy Humanoid.

    pip install poppy-ergo-jr
    
    

This will install everything necessary to control a Poppy Ergo Jr.

### Upgrade Poppy software on Windows

In case of update, it is advised to upgrade pypot (the motor library control) and the creature package separately:

> **Note** Substitute "poppy-ergo-jr" with "poppy-torso" or "poppy-humanoid" to install respectively a Poppy Torso or a Poppy Humanoid.

```bash
<br />pip install pypot --upgrade --no-deps
pip install poppy-creature --upgrade --no-deps
pip install poppy-ergo-jr --upgrade --no-deps
```

> **Info** To understand commands above - *--upgrade* will uninstall before starting the install - *--no-deps* will avoid installing dependencies, this is usefull to avoid pip to compile *scipy* as it will probably fail of you have not GCC and Fortran dependancies.

## Install Python and Poppy software on Mac OSX

Mac OSX has a Python distribution installed by default. Before installing Poppy software, you need to install the Python package manager **pip**. Open a terminal copy and press enter to execute the command below:

    curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | sudo python
    

You can now install Poppy software for the creature of your choice:

> **Note** Substitute "poppy-ergo-jr" with "poppy-torso" or "poppy-humanoid" to install respectively a Poppy Torso or a Poppy Humanoid.

    pip install poppy-ergo-jr --upgrade
    
    

## Install Python and Poppy software on GNU/Linux

Most of GNU/Linux distributions, have already a Python distribution installed by default, but if

### Install Miniconda Python distribution

> **Info** Poppy software libraries work in Python 2.7 and Python 3.3+. If you have no ideas on which version to install, we suggest you to use Python 2.7 as we develop in this version.

If you want to have up-to-date numpy, scipy and jupyter without having to compile them, we suggest you to install Anaconda or at least the conda package manager distributed with miniconda. Download miniconda (64-bit) with these command below in your terminal:

    curl -o miniconda.sh http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
    

If you have a 32-bit computer

     curl -o miniconda.sh http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86.sh
     ```
    
    Execute commands below and follow the instructions to install miniconda:
    
    

chmod +x miniconda.sh ./miniconda.sh

    <br />You can now install some required and other useful dependencies for Poppy software with conda:
    

conda install numpy scipy notebook jupyter matplotlib

    You can now [install Poppy software](#install-poppy-software-on-gnulinux).
    
    
    ### Install dependancies with your operating system package manager (alternative solution to Anaconda/Miniiconda)
    
    Pypot, the main library of the robot is depending (amongst some other) on two big scientific libraries *Numpy* and *Scipy* which are themselves depending on C and Fortran code. These libraries may be installed with the Python package system (pip), but because of the huge number and differences between GNU/Linux distributions pip is not able to distribute binaries for Linux so all dependencies must be compiled... The solution to avoid the compilation of numpy and scipy is to install them with your distribution package manager.
    
    On Ubuntu & Debian:
    
    ```bash
    curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | sudo python
    sudo apt-get install gcc build-essential python-dev python-numpy python-scipy python-matplotlib
    sudo pip install jupyter
    

On Fedora:

```bash
curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | sudo python
sudo yum install gcc python-devel numpy scipy python-matplotlib
sudo pip install jupyter
```

On Arch Linux:

```bash
curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | sudo python
sudo pacman -S python2-scipy python2-numpy python2-matplotlib
sudo pip install jupyter

```

You can now [install Poppy software](#install-poppy-software-on-gnulinux).

> **Note** The downside is the Python libraries from you distribution system are very often out of date.

### Install Poppy software on GNU/Linux

Open the terminal, copy and press enter to execute the command below:

> **Note** Substitute "poppy-ergo-jr" with "poppy-torso" or "poppy-humanoid" to install respectively a Poppy Torso or a Poppy Humanoid.

    pip install poppy-ergo-jr --user
    

This will install everything necessary to control a Poppy Ergo Jr.

### Upgrade Poppy software on GNU/Linux

In case of update, it is advised to upgrade pypot (the motor library control) and the creature package separately:

> **Note** Substitute "poppy-ergo-jr" with "poppy-torso" or "poppy-humanoid" to install respectively a Poppy Torso or a Poppy Humanoid.

```bash
<br />pip install pypot --upgrade --no-deps
pip install poppy-creature --upgrade --no-deps
pip install poppy-ergo-jr --upgrade --no-deps
```

> **Info** To understand commands above - *--user* will install Python package in user directories, it avoid using `sudo` if you use the Python of your OS. - *--upgrade* will uninstall before starting the install - *--no-deps* will avoid installing dependencies, this is usefull to avoid pip to compile *scipy* as it will probably fail of you have not Fortran dependancies