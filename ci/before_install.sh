set -x
set -e
echo "Running before_install.sh on $TRAVIS_OS_NAME"
echo "Checking OS : PWD = $PWD, HOME=$HOME"

wget https://github.com/jgm/pandoc/releases/download/1.16.0.1/pandoc-1.16.0.1-1-amd64.deb
sudo dpkg -i pandoc-1.16.0.1-1-amd64.deb

# Remove useless outputs in STDOUT
set +x
