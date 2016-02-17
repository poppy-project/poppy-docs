[![Build Status](https://travis-ci.org/poppy-project/poppy-docs.svg?branch=master)](https://travis-ci.org/poppy-project/poppy-docs)
# Poppy documentation
This is the source code repository for the documentation of the [Poppy Project](http://poppy-project.org). The documentation is visible on [docs.poppy-project.org](http://docs.poppy-project.org/) so if you want to read it, please go there. If you want to contribute please do go further with this file.

# How to contribute
The Poppy Documentation is licensed under a Creative Commons Attribution-ShareAlike 4.0 license. Everyone is free to add, edit and correct the documentation.

## Editing basics
The source code of the tutorial is [hosted on Github](http://github.com/poppy-project/poppy-docs). The Github [Fork & Pull workflow](https://help.github.com/articles/using-pull-requests) is used to accept and review changes.

The documentation uses the [GitBook](https://www.gitbook.com/book/poppy-project/poppy-docs/details) service for publishing its documentation. [See more information about how GitBook works](http://help.gitbook.com/).

The tutorial is written in [Markdown mark up language](https://help.github.com/articles/markdown-basics).

You can find any discussions about the contents of the tutorial on the [Github issue tracker](https://github.com/poppy-project/poppy-docs/issues).

## Getting started and prerequisites

For contributing to the documentation the following is needed to get started:

* a [Github account](https://github.com)
* in the case of complex edits familiarity with [Git command line basics](https://help.github.com/articles/set-up-git) or familiarity with an app ([Windows](https://windows.github.com/), [Mac](https://mac.github.com/)) to push your edits made on your computer to Github.

## Fork the repository

First fork the [poppy-project/poppy-docs](https://github.com/poppy-project/poppy-docs) repository to your personal Github account:

![Fork button](contributing/images/fork.png)

## Editing chapter content

### Simple changes

For simple changes like typo corrections you can use the Github online editor:

* Open your local fork page on Github,
* go to *README.md* file in any chapter,
* press the *Edit* icon (pen)

and you can edit the chapter directly on github.com.

![Edit button](contributing/images/edit.png)

Markdown syntax is used to edit the individual pages of the tutorial.

![Github editor](contributing/images/github_editor.png)

Click on "Commit changes" to save your changes and create a pull request as [explained below](#making-a-pull-request).

### New content and complex changes

For adding new chapters, writing longer snippets of text or adding images, you need to get a copy of the tutorial to your local computer.

Either use the Github app for your operating system (mentioned above) or `git` command line to get the repository locally. You get the repository address from the front page of your own Github repository fork:

`git clone git@github.com:yourgithubusername/poppy-docs.git`

Then, create a branch for your new changes to sit in. It helps to call the branch something related to the changes you are going to make.

`git checkout -b contributing`

Download the [Gitbook Editor](https://www.gitbook.com/editor/) application to your computer.

Then you can open the documentation in Gitbook Editor (*File* > *Open book*).

Make any changes in the tutorial using Gitbook and then save changes (*Book* > *Save all*).
<!-- TODO push or not-->

If you don't want to download the Gitbook Editor app you can also go to the [Gitbook website](http://gitbook.com), sign up for free with your GitHub account and work directly in your browser.

## Making a pull request

After you have finished your changes you need to create [a pull request](https://help.github.com/articles/using-pull-requests)  on Github. DjangoGirls will get notified about the pull request, review your changes, suggest any corrections if needed and then *pull* your changes to the master version.

In your own repository on Github press do *Compare & pull request*

![PR](contributing/images/pull_request.png)

Fill in the information *why* this change is being made. The reviewer can see the details of the actual change, so you don't need repeat the content of the change.

Then press *Create pull request*.

Github emails will notify you for the follow up process.

# Building the documentation (advanced users)
If you want to build the html version in your comptuter, without installing the desktop application of the [Gitbook Editor](https://www.gitbook.com/editor/), you can also build the book with a command line tool.

```bash
git clone https://github.com/poppy-project/poppy-docs.git
cd poppy-docs/

npm install gitbook-cli -g
gitbook install
gitbook build ./
```

# Further information and help

GitHub has an excellent [documentation](https://help.github.com/). Check it out if you need help!
For further questions feel free to post thread in the [Poppy Project forum](forum.poppy-project.org).


