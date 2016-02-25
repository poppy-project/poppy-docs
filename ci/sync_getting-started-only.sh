#!/bin/bash
set -e
set -x

# Copy SUMMURY.md from the getting-started-only branch to the master and push force to getting-started-only 

last_commit_sha=$(git rev-parse --short HEAD)
# git config --global user.email $GIT_EMAIL
# git config --global user.name $GIT_NAME
# git_url=https://$GH_TOKEN@github.com/$GH_USERNAME/$GH_REPO.git
git_url=https://github.com/poppy-project/poppy-docs.git
tmp_repo=/tmp/getting-started
branch="getting-started-only"

# Configure Git to push with GitHub Oauth token
# git remote set-url origin $git_url


git clone $git_url $tmp_repo
    
pushd $tmp_repo/
    # Fix the summary
    curl -o ./en/SUMMARY.md https://raw.githubusercontent.com/poppy-project/poppy-docs/getting-started-only/en/SUMMARY.md
    git add -A
    git commit -m "Auto commit after $last_commit_sha (travis build #$TRAVIS_BUILD_NUMBER)"
    git push --force  --quiet origin $branch
popd

