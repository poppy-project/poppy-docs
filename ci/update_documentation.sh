#!/bin/bash
die(){ echo "Coudn't $*" >&2; exit 1; }

PROD_BRANCH=netlify

echo -e "\e[34mStarting update_documentation.sh\e[39m : install deps"

npm install -g gitbook-cli broken-link-checker http-server || die "install gitbook-cli"
#npm install -g gitbook@3.2.3 || die "install gitbook@3.2.3"
gitbook install || die "run gitbook install"

echo -e "\e[34mupdate_documentation.sh\e[39m : build"

gitbook build -d ./ || die "Build the documentation in HTML"

echo -e "\e[34mupdate_documentation.sh\e[39m : check links"

pushd _book
    http-server -p 8081 -s &
    blc http://localhost:8081/ -ro --exclude *.local* --exclude *192.168* --exclude *.127.0.0.1 --exclude *forum.poppy-project.org* --user-agent "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:79.0) Gecko/20100101 Firefox/79.0" --get > contributing/checked_links.txt
    grep -e 'BROKEN' -e 'Getting links from' -e 'Error' contributing/checked_links.txt
popd

echo -e "\e[34mupdate_documentation.sh\e[39m : git config"

last_commit_sha=$(git rev-parse --short HEAD)

git config --global user.email $GIT_EMAIL
git config --global user.name $GIT_NAME
git_url=https://$GH_TOKEN@github.com/$GH_USERNAME/$GH_REPO.git
# Configure Git to push with GitHub Oauth token
git remote set-url origin $git_url

echo -e "\e[34mupdate_documentation.sh\e[39m : Create local repo"

tmp_repo=/tmp/$GH_REPO-doc

if [ -d $tmp_repo ]; then
   rm -rf $tmp_repo/
fi
mkdir $tmp_repo

echo -e "\e[34mupdate_documentation.sh\e[39m : Move the build to $PROD_BRANCH local repo"

git clone -b $PROD_BRANCH $git_url $tmp_repo || die "clone branch $PROD_BRANCH"
cp -r _book/* $tmp_repo/

echo -e "\e[34mupdate_documentation.sh\e[39m : Move the build to $PROD_BRANCH remote repo"

# Upload it to $PROD_BRANCH
# Exit if commit is untrusted
if [[ "$TRAVIS" == "true" ]]; then
    if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "master" ]; then
        echo "This is an untrusted commit. No deployment will be done."
    else
        echo "Deploying..."
        # Push the new documentation only if it is not a pull request and we are on master
        pushd $tmp_repo
            # /dev/null to hide any sensitive credential data that might otherwise be exposed.
            git push origin --delete --quiet $PROD_BRANCH > /dev/null 2>&1 || die "delete remote branch $PROD_BRANCH"
            git add -A
            git commit -m "Doc generated after commit $last_commit_sha (travis build #$TRAVIS_BUILD_NUMBER)" || die "commit to branch $PROD_BRANCH"
            git push --force --quiet origin $PROD_BRANCH || die "push to remote branch $PROD_BRANCH"
        popd
    fi
fi

echo -e "\e[34mupdate_documentation.sh\e[39m : Ended with success."
