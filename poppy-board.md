# Use Poppy ready images

The easiest way to setup the control board of your Poppy Creature is to used one of the pre-made SD-card images. Those images come with everything installed and ready, you just need to copy it on a SD-card and you are good to go.
.
For that, you will need a free 8Go (or more) SD-card, and download the image corresponding to your board:
* [RaspberryPi-2 image]() for ErgoJr
* [Odroid image]() for Torso or Humanoid

Then to copy it on your SD-card.

# Use an RaspberryPi-2 board

*All details and resources nessary to make your own "Poppy Ready" image for RaspberryPi-2 can be found on this [github repository](https://github.com/pierre-rouanet/raspoppy).*


We are here describing the set of tools we use to setup a Raspberry board for a Poppy Creature. While we try to keep this procedure as simple as possible, it still requires a good knowledge of Linux OS and of Python. For those who are not interrested in digging into those details, we will soon provide ready-to-use SD-card images which you can directly download and put in your Raspberry.

*While this procedure is mainly designed for the Raspberypi-2, most of it (especially all conda recipes) should also work for the [odroid XU4 ](http://www.hardkernel.com/main/main.php) as both boards used an armv7 CPU. It is important to also note that this procedure is only given as an example: i.e. this is how we build the SD-card images we provide.  Yet, you can freely adapt to better match your needs.*

*Pull Requests are welcomed!*

## Install Raspbian

Just follow standard [instructions](https://www.raspberrypi.org/downloads/raspbian/) from raspberry.org. We use the latest standard Raspbian OS.

*Note: the rest of the procedure will require to have an internet access on the Raspberry.*

## Remove some stuff (~2min)
To save some spaces on the card, we removed some package which are not useful for our needs.

First, make sure the package list is updated:
```bash
sudo apt-get update
```

Then, remove some package which are not useful here (of course if you need to keep playing minecraft we won't judge you):

```bash
sudo apt-get remove --purge wolfram-* minecraft-pi scratch penguinspuzzle -y

sudo apt-get autoremove -y
```

## Install Python [Anaconda](https://store.continuum.io/cshop/anaconda/) (~1min)

To make sure that we can rely on a clean and somewhat better controlled the environment and dependencies we install our own Python environment instead of using the OS packages. If you are not a Python wizard, we strongly advise you to do the same.

We chose the [Miniconda](http://conda.pydata.org/miniconda.html) distribution has they recently add [support for Raspberry](http://continuum.io/blog/new-arch) and that we can benefit from their [recipe concept](http://conda.pydata.org/docs/building/recipe.html) which makes installation so much faster and simpler.

* Download and install the latest Miniconda
```bash
wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-armv7l.sh
bash Miniconda-latest-Linux-armv7l.sh -b
rm Miniconda-latest-Linux-armv7l.sh
```

## Create a Poppy Python environment (~1min)

To make things simpler for those who are not familiar with Python ecosystem which can be sometimes [confusing](http://captiongenerator.com/30052/Hitler-reacts-to-the-Python-ecosystem), we are creating a dedicated Poppy Environment for the conda distribution (please refer to [this doc](http://conda.pydata.org/docs/using/envs.html) for details).

```bash
~/miniconda/bin/conda create -n poppy python=2 -y
source ~/miniconda/bin/activate poppy
```

* Add [external poppy-project recipes](https://anaconda.org/poppy-project) for conda: we have defined our own recipe and pre-built them so you do not need to compile them on you own board. The full list of available recipes can be seen [here](https://anaconda.org/poppy-project) (Do not hesitate to contribute and add other recipes!)

```bash
conda config --add channels poppy-project
conda config --set show_channel_urls True

```

* Set Poppy Environment as default

```bash
echo "
export PATH=\$HOME/miniconda/envs/poppy/bin:\$PATH" >> ~/.bashrc
```

## Install the main scientific python packages (~5min)

This is just the basic packages which are used by most poppy softwares and demos:

```bash
conda install jupyter numpy scipy matplotlib -y
```

## Poppy Creature Packages (~1min)

Each Poppy Creature comes with its own specific software. Each of this package is based on [pypot](https://github.com/poppy-project/pypot) which handles all the low-level communication with the robot.

So, first we install pypot:

```bash
conda install pypot -y
```

Then, the software for your specific creature. For isntance, if you want to use an [Ergo-Jr](https://github.com/poppy-project/poppy-ergo-jr):
```bash
conda install poppy-ergo-jr -y
```

The list of available poppy creatures can be found via:

```bash
conda search poppy
```

*Note that you can install as many creatures as you want.*

## Camera support (~1min) - *Raspberry only!*

First you need to setup your camera according to the [official documentation](https://www.raspberrypi.org/documentation/usage/camera/README.md). You do not need to install the picamera package as we will not use it but uses opencv instead.

Once you have enabled the camera using raspi-config, you can check if it worked via:

```bash
raspistill -o cam.jpg
```
*Note this will only work if you boot to the Desktop!**

Then, we launch the driver:

```bash
sudo modprobe bcm2835-v4l2
```

You can also configure the OS so it automatically launches the driver at startup (otherwise you have to use the previous line each time you reboot your card):

```bash
sudo sed -i /bcm2835-v4l2/d /etc/modules
echo "bcm2835-v4l2" | sudo tee -a /etc/modules
```

### OpenCV and Image features

Then we install the standard computer vision library [OpenCV](http://opencv.org) using a conda recipe as well as it is very long to compile. Make sure it will install the version 3.

```bash
conda install opencv -y
```

For marker detection we use the [hampy](https://github.com/pierre-rouanet/hampy) library:

```bash
conda install hampy -y
```


## Troubleshooting
Please check and report any unknown [issue](https://github.com/pierre-rouanet/raspoppy/issues)!


# Use an ODROID board
