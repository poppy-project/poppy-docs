# Programming Poppy robots in Python

![Programming in Python banner](../img/python/banner.png)

This chapter will guide you through how to control Poppy robots in Python. As it is actually the language used for writing Poppy core libraries, we will show you how to access all the different levels of control, from the lower to the higher.

We will detail everything you need to know to directly program you robot using its embedded Python or to install everything locally.

We will try to provide as many examples as possible (as a collection of [Jupyter notebooks](#TODO-BELOW)) and point to the complete API so you can find and use the least famous features.

All Poppy libraries are open source and are released under the [GPL v3](http://www.gnu.org/licenses/gpl.html) license. So you can freely access the source code on [github](https://github.com/poppy-project). Do not hesitate to fork them, send pull request and contribute!

## Why Python and Anaconda?

![Python powered](../img/python/powered.png)

The libraries developed for the Poppy project were designed with the aim to make it easy and fast to write code for controlling various robots based on - originally - robotis dynamixel motors. The idea was to provide access from the lower level - raw serial communication with a specific motor for instance - to higher levels such as starting and stoping primitives/behaviors (e.g. face tracking, postures, ...) or directly recording motions through learning by demonstration.

We decided to write most of them in Python as its flexibility allows for fast and modular development. It was also meant to be accessible by a large audience, from developers and roboticists in general, to hobbyists, researchers, artists... Python was also chosen for the tremendous pools of existing libraries (scientific, computer vision, IO, web...) so if one is interested in adding a new feature, such as support for a new motor/sensor, it should be as easy and fast as possible.

Finally, support for multi-platforms and ease of installation were also key aspects.

![Anaconda Python distribution](../img/python/anaconda.png)

We also strongly advise to use the [Anaconda Python distribution](https://www.continuum.io/why-anaconda) as it already includes most of the libraries needed by the Poppy libraries. We also provide all poppy libraries as conda recipes so they can be easily install using Anaconda (see the [install section](#TODO)).

## Overview of the different libraries

![Poppy softwares architecture](../img/python/architecture.png)

## Installation

## Jupyter Notebooks gallery

## Services
### HTTP/REST API

## Advanced use case: extending poppy softwares
### Adding support for a new sensor/motor
### Defining a new creature

<!-- ## pypot library? (appendix ?) -->
