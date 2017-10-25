# Gallerie de notebooks Jupyter : programmer en Python

<!-- toc -->

La plupart des exemples d'utilisation de Python avec les robots Poppy sont donnés avec les [notebooks Jupyter](http://jupyter.org). Nous encourageons fortement l’utilisation de cette application web, car elle permet la création et le partage de documents mélangeant du code, des éléments visuels et du texte explicatif. Furthermore, they also permit the design of interface for live controlling a robot thanks to widgets.

![Notebook Example](../img/python/notebook-example.png)

For each notebook, we provide a short description of what it does, with which robot/simulator it can be used and of course a link. Most of the notebooks are written in english but you will also find some in french (and hopefully soon in other languages).

This chapter presents a gallery of notebooks and tries to organize them into different categories.

## Getting started

* **Discover your Poppy Ergo Jr:** [Notebook]() - Begin controlling your robot, launch behavior, send motor command, get values from the sensor...

* **Controlling a Poppy Humanoid in V-REP: [Notebook](https://github.com/poppy-project/poppy-humanoid/blob/master/software/samples/notebooks/Controlling%20a%20Poppy%20humanoid%20in%20V-REP%20using%20pypot.ipynb)** - Describe how to setup a Poppy Humanoid in V-REP and how to control it (motor control and sensor reading) from pypot in Python.

* **Record, Save, and Play Moves: [Notebook](https://github.com/poppy-project/community-notebooks/blob/master/demo/poppy-ergo_Record%2C%20Save%2C%20and%20Play%20Moves.ipynb)** - Simple introduction on how to record by demonstration moves on any Poppy Creature. It also shows how they can be re-played and saved/load to/from the disk.

#### Notebooks en français

* **10 choses à savoir avec Poppy Humanoid/ErgoJr et V-REP: [pour l'ErgoJr](https://github.com/poppy-project/community-notebooks/blob/master/tutorials-education/poppy-humanoid_poppy-torso__vrep_installation%20et%20prise%20en%20main/poppy%20simul%C3%A9/Ergo_simulation%20prise%20en%20main.ipynb), [pour l'Humanoid](https://github.com/poppy-project/community-notebooks/blob/master/tutorials-education/poppy-humanoid_poppy-torso__vrep_installation%20et%20prise%20en%20main/poppy%20simul%C3%A9/premier%20pas%20avec%20poppy%20humanoid%20en%20python%20-%2010%20choses%20%C3%A0%20savoir.ipynb)** - 10 informations de base pour bien commencer avec Poppy Humanoid ou Poppy ErgoJr simulés dans V-REP et comment les contrôler en Python.

## Simulator

### V-REP

* **Controlling a Poppy Humanoid in V-REP: [Notebook](https://github.com/poppy-project/community-notebooks/blob/master/demo/poppy-humanoid_Controlling%20in%20V-REP%20using%20pypot.ipynb)** - Describe how to setup a Poppy Humanoid in V-REP and how to control it (motor control and sensor reading) from pypot in Python.

* **Interacting with objects in V-REP: [Notebook](https://github.com/poppy-project/poppy-torso/blob/ff6254355ce18a26f58654f5abc82485a7a22d13/software/doc/tutorial/Poppy%20Torso%20interacting%20with%20objects%20in%20V-REP%20using%20Pypot.ipynb)** - Show how you can programtically add objects to the V-REP simulation and interact with them. This example uses a Poppy Torso but can be easily adapted to other creatures.

* **Learning the robot IK: [Notebook](https://github.com/flowersteam/explauto/blob/master/notebook/Learning%20the%20IK%20of%20the%20arm%20of%20a%20simulated%20Poppy%20using%20Explauto.ipynb)** - Demonstrate how explauto can be used to learn the inverse kinematics of a Poppy Humanoid. The experiments are run in V-REP simulation but it also gives hints on how it can be transposed in the real world.

#### Notebooks en français

* **10 choses à savoir avec Poppy Humanoid/ErgoJr et V-REP [pour l'ErgoJr](https://github.com/poppy-project/community-notebooks/blob/master/tutorials-education/poppy-humanoid_poppy-torso__vrep_installation%20et%20prise%20en%20main/poppy%20simul%C3%A9/Ergo_simulation%20prise%20en%20main.ipynb), [pour l'Humanoid](https://github.com/poppy-project/community-notebooks/blob/master/tutorials-education/poppy-humanoid_poppy-torso__vrep_installation%20et%20prise%20en%20main/poppy%20simul%C3%A9/premier%20pas%20avec%20poppy%20humanoid%20en%20python%20-%2010%20choses%20%C3%A0%20savoir.ipynb)** - 10 informations de base pour bien commencer avec Poppy Humanoid ou Poppy Ergo Jr simulés dans V-REP et comment les contrôler en Python.

## HTTP REST API and remote connection

* **Controlling a robot using HTTP requests: [Notebook](https://github.com/poppy-project/community-notebooks/blob/master/demo/poppy-humanoid_Accessing%20pypot%20REST%20API%20through%20HTTP%20requests.ipynb)** - Show how you can send HTTP requests to a robot, using the REST API, to control it. The notebook is based on a V-REP simulated Poppy Humanoid but can be adapted to other creatures.

## Scientific experiments

### Discover Explauto

* **Learning the robot IK: [Notebook](https://github.com/flowersteam/explauto/blob/master/notebook/Learning%20the%20IK%20of%20the%20arm%20of%20a%20simulated%20Poppy%20using%20Explauto.ipynb)** - Demonstrate how explauto can be used to learn the inverse kinematics of a Poppy Humanoid. The experiments are run in V-REP simulation but it also gives hints on how it can be transposed in the real world.

## Demo interface

* **Primitives launcher for Poppy Humanoid: [Notebook](https://github.com/poppy-project/poppy-humanoid/blob/dd469c262ede0877153afd6e086f65fc85e8b729/software/samples/notebooks/Demo%20Interface.ipynb)** - Provides all codes needed to directly launched primitives (stand, sit, idle motions, limit torque...)

## Education

#### Notebooks en français

#### Initiation à l'informatique en Lycée

* **Découverte: [TP1](https://github.com/poppy-project/community-notebooks/blob/master/tutorials-education/poppy-torso__vrep_Prototype%20d'ininitiation%20%C3%A0%20l'informatique%20pour%20les%20lyc%C3%A9ens/decouverte/Decouverte%20TP1.ipynb), [TP2](https://github.com/poppy-project/community-notebooks/blob/master/tutorials-education/poppy-torso__vrep_Prototype%20d'ininitiation%20%C3%A0%20l'informatique%20pour%20les%20lyc%C3%A9ens/decouverte/Decouverte%20TP2.ipynb), [TP3](https://github.com/poppy-project/community-notebooks/blob/master/tutorials-education/poppy-torso__vrep_Prototype%20d'ininitiation%20%C3%A0%20l'informatique%20pour%20les%20lyc%C3%A9ens/decouverte/Decouverte%20TP3.ipynb)** - Comprendre comment faire bouger simplement le robot. Utilisation des boucles. Ces TPs utilisent un Poppy Torso simulé dans V-REP.

* **Dialogue: [TP1](https://github.com/poppy-project/community-notebooks/blob/master/tutorials-education/poppy-torso__vrep_Prototype%20d'ininitiation%20%C3%A0%20l'informatique%20pour%20les%20lyc%C3%A9ens/dialogue/Dialogue%20TP1.ipynb), [TP2](https://github.com/poppy-project/community-notebooks/blob/master/tutorials-education/poppy-torso__vrep_Prototype%20d'ininitiation%20%C3%A0%20l'informatique%20pour%20les%20lyc%C3%A9ens/dialogue/Dialogue%20TP2.ipynb)** - Établir un dialogue entre Python et le robot. Ces TPs utilisent un Poppy Torso simulé dans V-REP.

<!-- TODO

## Going further

### Low-level communicatio

### Debug and setup

### Benchmark

### Extending Poppy software

## Contributing to this gallery -->

N'hésitez pas à nous faire savoir s'il manque certaines références d'ordinateurs portables! Vous pouvez directement envoyer une pull-request sur GitHub ou utiliser [le gestionnaire de bug](https://github.com/poppy-project/poppy-docs/issues).