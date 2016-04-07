## Program the robot

Poppy robots are designed to be easily programmed. They are three main options presented here:
* using [Snap!](#using-snap), a variant of Scratch the visual programming language,
* using [Python](#using-python) and leveraging the power of the whole API,
* through the  [REST API](#through-the-rest-api) which let you  interface Poppy robots with other devices or any programming language.

>**Info** As for the rest of the project, all our libraries are open source and available on [GitHub](https://github.com/poppy-project).

   <img src="../img/logo/open-source.png" alt="OpenSource Logo" height="100"> <img src="../img/logo/gpl-v3.png" alt="GPLv3 Logo" height="100"> 


### Using Snap_!_
<!-- TODO: Didier -->

### Using Python

![Python Powered](../img/logo/python.png)

Poppy libraries have been written in Python, to allow for fast development and extensibility and to benefit from all existing scientific libraries. Python is also a well-known language and widely used in education or artistic fields. By programming Poppy in Python, you will have access from the very low-level API to the higher levels.

The API has been designed to allow for very fast prototyping. Creating a robot and starting to move motors should not take more than a few lines:

```python
from poppy.creatures import PoppyErgoJr

jr = PoppyErgoJr()
jr.m3.goal_position = 30
```

<!-- Note: "Notebook documents" or “notebooks”, all lower case -->
We are also big fan of the [Jupyter Project](http://jupyter.org) and notebooks. Notebooks are documents which contain both Python code and rich text elements like equations, pictures, videos. They can be edited from the Jupyter Web interface which allow users to program Poppy robots directly from a website hosted on the robot computer. We think that this is a powerful tool permitting the creation and sharing of live code, results visualizations and explanatory text combined in a single document.


 <img src="../img/logo/jupyter.png" alt="Jupyter Logo" width="100"> 

Most of the tutorials, experiments or pedagogical activities that we and the community develop are available as notebooks.

![Notebook example](../img/notebook-example.png)

> **Info** An updated gallery of notebooks can be found [here](../programming/notebooks.md). Contribtions welcomed!

### Through the REST API

On top of the Snap_!_ and Python options, we wanted to provide another way of accessing and controlling your robot from any device or language. Poppy robots are providing a REST API. The most important features of the robot can be access through HTTP GET/POST requests.

From a more practical point of view, this allows you to:

* **Write bridges to control Poppy robot in any language** (awesome contributors have already written [Matlab](https://github.com/joelortizsosa/Connection-Poppy-Matlab) and [Ruby](https://github.com/poppy-project/pypot/tree/master/samples/REST/ruby) wrappers).
* **Design web apps** connected to your robot, such as the [monitor interface](https://github.com/poppy-project/poppy-monitor) (also a contribution!).
* Make your **robot interact with other connected devices** such as a smartphone, intelligent sensors, or even your twitter account...
