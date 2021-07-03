#!/bin/bash
die(){ echo "Couldn't $*" >&2; exit 1; }

echo -e "\e[36mStarting update_documentation.sh\e[39m: install deps"

npm install -g gitbook-cli || die "install gitbook-cli"
gitbook install || die "run gitbook install"

echo -e "\e[36mupdate_documentation.sh\e[39m: build"

gitbook build -d || die "Build the documentation in HTML"

echo -e "\e[36mupdate_documentation.sh\e[32m: BUILD SUCCEEDED!\e[39m"
