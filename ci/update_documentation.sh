#!/bin/bash
die(){ echo "Coudn't $*" >&2; exit 1; }

echo -e "\e[34mStarting update_documentation.sh\e[39m : git config"

last_commit_sha=$(git rev-parse --short HEAD)

git config --global user.email $GIT_EMAIL
git config --global user.name $GIT_NAME
git_url=https://$GH_TOKEN@github.com/$GH_USERNAME/$GH_REPO.git
# Configure Git to push with GitHub Oauth token
git remote set-url origin $git_url

echo -e "\e[34mupdate_documentation.sh\e[39m : git push"

# Push the broken links
git add contributing/broken_links.txt
git commit -m "Update broken links after commit $last_commit_sha"  || die "commit broken links"
git push origin master  || die "push to master"


tmp_repo=/tmp/$GH_REPO-doc

if [ -d $tmp_repo ]; then
   rm -rf $tmp_repo/
fi
mkdir $tmp_repo

echo -e "\e[34mupdate_documentation.sh\e[39m : Move the build to gh-pages local repo"

git clone -b gh-pages $git_url $tmp_repo || die "clone gh-pages"
cp -r _book/* $tmp_repo/
cp *.pdf $tmp_repo/

echo -e "\e[34mupdate_documentation.sh\e[39m : Move the build to gh-pages remote repo"

# Upload it to gh-pages
# Exit if commit is untrusted
if [[ "$TRAVIS" == "true" ]]; then
    if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "master" ]; then
        echo "This is an untrusted commit. No deployment will be done."
    else
        echo "Deploying..."
        # Push the new documentation only if it is not a pull request and we are on master
        pushd $tmp_repo
            # /dev/null to hide any sensitive credential data that might otherwise be exposed.
            git push origin --delete --quiet gh-pages > /dev/null 2>&1 || die "delete remote branch gh-pages"
            git add -A
            git commit -m "Doc generated after commit $last_commit_sha (travis build #$TRAVIS_BUILD_NUMBER)" || die "commit to branch gh-pages"
            git push --force --quiet origin gh-pages || die "push to remote branch gh-pages"
        popd
    fi
fi

echo -e "\e[34mupdate_documentation.sh\e[39m : Ended with success."