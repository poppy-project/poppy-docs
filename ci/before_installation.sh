set -x
set -e
echo "Running before_install.sh on $TRAVIS_OS_NAME"
echo "Checking OS : PWD = $PWD, HOME=$HOME"

sudo dpkg -i https://github.com/jgm/pandoc/releases/download/1.15.1/pandoc-1.15.1-1-amd64.deb

# Remove useless outputs in STDOUT
set +x
