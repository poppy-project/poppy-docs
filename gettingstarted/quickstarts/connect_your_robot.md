## Connect your robot
---

### Simulated robot

After install the required softwares (instruction [here](http://poppy-project.github.io/poppy-docs/gettingstarted/install_software.html) for robot ; and [here](http://poppy-project.github.io/poppy-docs/gettingstarted/visualize_your_robot.html) for V-rep) you can connect your robot.

So, all you have to do is open a Python console or start a Python file
and start it with:

```python
from poppy_humanoid import PoppyHumanoid
poppy = PoppyHumanoid(simulator='vrep')
```

Or if you want to use Snap  to control Poppy, type:

```python
from poppy_humanoid import PoppyHumanoid
poppy = PoppyHumanoid(simulator='vrep', use_snap=True)
```
---

### Real robot (no installation required)

You need only a web-browser (like firefox or chrome) and be on the same network.

*NB: in the first time a Poppy robot must connect via ethernet cable.*

**Enter this web url in your browser: [http://poppy.local](http://poppy.local)**

*For windows users to use the alias poppy.local you must have installed Bonjour service. Otherwise you need to know the IP address of the robot or install the Bonjour service ([here](https://support.apple.com/downloads/Bonjour_for_Windows))*

When you are in poppy.local, this page opens and you have many option:

![image](../../images/poppy_home.png)

- Configure wifi: connecte wifi and enter the access key
- Change hostname: if you change a hostname, the url to acces in robot change also. *Exemple: if you change poppy to my_robot, the url to connect becomes http://my_robot.local*
- Open Ipython notebook (go [here](http://poppy-project.github.io/poppy-docs/gettingstarted/quickstarts/python.html))
- Open snap (go [here](http://poppy-project.github.io/poppy-docs/gettingstarted/quickstarts/snap.html))
- Open Poppy monitor
- Debug option: display log and remove motor acces
