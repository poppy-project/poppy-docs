 #!/bin/bash
set -x
set -e
echo "Running before_install.sh on $TRAVIS_OS_NAME"
echo "Checking OS : PWD = $PWD, HOME=$HOME"

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
    # Display os with more verbose than $TRAVIS_OS_NAME
    lsb_release -a

    # Download V-REP
    # wget http://coppeliarobotics.com/V-REP_PRO_EDU_V${VREP_VERSION}_64_Linux.tar.gz
    # tar -xzf V-REP_PRO_EDU_V${VREP_VERSION}_64_Linux.tar.gz
    # mv ./V-REP_PRO_EDU_V${VREP_VERSION}_64_Linux $VREP_ROOT_DIR

    # Use miniconda python (provide binaries for scipy and numpy on Linux)
    if [[ "$TRAVIS_PYTHON_VERSION" == "2.7" ]]; then
        curl -o miniconda.sh http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh 
    else
        curl -o miniconda.sh http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh 
    fi
elif [[ "$TRAVIS_OS_NAME" == "osx" ]]; then

    # Download V-REP
    # wget http://coppeliarobotics.com/V-REP_PRO_EDU_V${VREP_VERSION}_Mac.zip
    # unzip -qq V-REP_PRO_EDU_V${VREP_VERSION}_Mac.zip
    # mv ./V-REP_PRO_EDU_V${VREP_VERSION}_Mac $VREP_ROOT_DIR

    # brew update

    # Use miniconda python (provide binaries for scipy and numpy on Linux)
    if [[ "$TRAVIS_PYTHON_VERSION" == "2.7" ]]; then
        curl -o miniconda.sh http://repo.continuum.io/miniconda/Miniconda-latest-MacOSX-x86_64.sh
    else
        curl -o miniconda.sh http://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
    fi
fi



chmod +x miniconda.sh
./miniconda.sh -b -p $HOME/miniconda
export PATH=$HOME/miniconda/bin:$PATH
hash -r
conda config --set always_yes yes --set changeps1 no
conda update -q conda

# conda create
# source activate condaenv
conda install --yes pip python=$TRAVIS_PYTHON_VERSION numpy scipy matplotlib pyzmq flake8 ipython-notebook runipy

# Show config
which python
which pip

# Remove useless outputs in STDOUT
set +x
