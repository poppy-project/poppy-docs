# Install Poppy software
> **Warning** If you want to install the board of a real robot, go to the [startup chapter](burn-an-image-file.md) instead.

This section will guide you to install Poppy software on your personal computer. It is useful **only** if you are in one of these situations:
*  You want to control a simulated robot.
*  You want to control a Poppy creature from your computer **without** using the embedded board (Odroid or Raspberry Pi).

Poppy creatures are run by Python computer code. Depending on your operating system you will have to install Python and in any case you'll have to install the required software libraries. 


## 1. Install Python...
### ...on Windows

Download and install the last version of [Python for Windows (x86-64 executable installer)](https://www.python.org/downloads/windows). Make sure you activate the checkbox **Add Python to PATH** during installation, otherwise Windows wouldn't find Python in the next steps.

> **Info** Poppy software libraries work with Python 3.5.x and later. Anaconda and Python 2.x.x are no longer supported starting from pypot >= 4.0.0.

### ...on GNU/Linux (Ubuntu, Fedora, Archlinux...)

Most of GNU/Linux distributions are already equipped with Python, thus you can just go ahead. Just replace all `pip` commands by `pip3`, that will enforce the use of Python 3 since some distributions still work with Python 2 as well. 

## 2. Install Poppy software

Now Python is installed in you Operating System, let's install the Poppy software.
Open the Windows shell (aka *cmd*) from your Windows menu. In the terminal (the black screen), type the command below and press Enter to execute it:


```bash
pip install poppy-ergo-jr

```

> **Note** This command tells Python to install the package corresponding to the Popppy Ergo Jr robot. Substitute "poppy-ergo-jr" with "poppy-torso" or "poppy-humanoid" to install respectively a Poppy Torso or a Poppy Humanoid.

> **Info** If an error tells you that *pip* is not recognized or not found, your Python installation probably failed in the previous step. Make it again.


### Upgrade Poppy software

Skip this step if this is your first install. In case of update, it is advised to upgrade pypot (the motor library control) and the creature package separately:

> **Note** Substitute "poppy-ergo-jr" with "poppy-torso" or "poppy-humanoid" to install respectively a Poppy Torso or a Poppy Humanoid.

```bash

pip install pypot --upgrade --no-deps
pip install poppy-ergo-jr --upgrade --no-deps
```

> **Info** To understand commands above
> - *--upgrade* will uninstall before starting the install
> -	*--no-deps* will avoid installing dependencies, this is usefull to avoid pip to compile *scipy* as it will probably fail of you have not GCC and Fortran dependencies.


## You're done!

If you followed steps 1 and 2 and met no specific error during the process, you successfully installed Python libraries for Poppy robot on your computer. 

