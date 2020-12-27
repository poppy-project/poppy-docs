#!/bin/bash
die(){ echo "Coudn't $*" >&2; exit 1; }

echo -e "\e[34mStarting update_documentation.sh\e[39m: install deps"

npm install -g gitbook-cli || die "install gitbook-cli"
gitbook install || die "run gitbook install"

echo -e "\e[34mupdate_documentation.sh\e[39m: build"

gitbook build -d || die "Build the documentation in HTML"

echo -e "\e[34mupdate_documentation.sh\e[32m: SUCCEEDED AND DEPLOYED!\e[39m"
