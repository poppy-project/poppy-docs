#!/bin/bash
set -e

last_commit_sha=$(git rev-parse --short HEAD)

git config --global user.email $GIT_EMAIL
git config --global user.name $GIT_NAME
git_url=https://$GH_TOKEN@github.com/$GH_USERNAME/$GH_REPO.git
# Configure Git to push with GitHub Oauth token
# git remote set-url origin $git_url

# Install Sphinx
pip install -q --upgrade argvee

# Build the doc
python build.py all

tmp_repo=/tmp/$GH_REPO-doc

if [ -d $tmp_repo ]; then
   rm -rf $tmp_repo/
fi
mkdir $tmp_repo

git clone -b gh-pages $git_url $tmp_repo
cp $GH_REPO.html $tmp_repo
cp $GH_REPO.pdf $tmp_repo
cp -r img $tmp_repo/img


# Upload it to gh-pages
# Exit if commit is untrusted
if [[ "$TRAVIS" == "true" ]]; then
    if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "master" ]; then
        echo "This is an untrusted commit. No deployment will be done."
    else
        # If there is nothing to commit, it won't be considered as an error
        set +e
        # Push the new documentation only if it is not a pull request and we are on master
        pushd $tmp_repo
            git add -A
            git commit -m "Doc generated after commit $last_commit_sha (travis build #$TRAVIS_BUILD_NUMBER)"
            git push origin gh-pages --quiet
        popd
    fi
fi
