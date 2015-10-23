# Work In Progress ! Do not rely on this doc !

[![image](images/cover.png)](http://poppy-project.github.io/poppy-docs/)
###It brings together all the hardware and software documentation for Poppy-creature: Humanoid, Torso, ErgoJr... <br/> It also includes the documentation of PyPot library!

This documentation is available in HTML and PDF:
* Go to the **HTML version**: [Click here](http://poppy-project.github.io/poppy-docs/)
* Go to the **PDF version**: [Click here](http://poppy-project.github.io/poppy-docs/Poppyprojectdocumentation.pdf)

You can find or share many examples of use Poppy-creature in this repository: 
* [poppy-project/ community-notebooks](https://github.com/poppy-project/community-notebooks)

**You need help**, or you just want to speak your project, go to the [Poppy-forum](https://forum.poppy-project.org/)

You want to know more about Poppy. Here are some helpful links:
* [poppy-project website](https://www.poppy-project.org/)
* [poppy-forum](https://forum.poppy-project.org/)
* [you-tube poppy](https://www.youtube.com/channel/UC3iVGSr-vMgnFlIfPBH2p7Q/playlists)
* [poppy pics (flickr)](https://www.flickr.com/photos/poppy-project/)
* [twitter #poppy_project](https://twitter.com/poppy_project)

# Work In Progress ! Do not rely on this doc !

* [html](http://poppy-project.github.io/poppy-docs/)
* [pdf](http://poppy-project.github.io/poppy-docs/Poppyprojectdocumentation.pdf)
* [![Build Status](https://travis-ci.org/poppy-project/poppy-docs.svg?branch=master)](https://travis-ci.org/poppy-project/poppy-docs)

#Poppy docs 

**All the documentation you need to use the Poppy robots**

This documentation contains:

* General Poppy project description
* Assembly guides for Poppy Humanoid, Poppy Torso and Poppy Ergo Jr
* Documentations of Poppy's libraries:
    * Pypot
    * Poppy creatures
    * poppy_humanoid
    * poppy_torso
    * poppy_ergo_jr

## Install Sphinx and generate the doc

Install sphinx:

`pip install sphinx sphinxjp.themes.basicstrap`

Install commonmark to be able to use markdowns in Sphinx:

`pip install commonmark recommonmark`

If you want to generate Latex or pdf documents:

`sudo apt-get install -qq texlive texlive-latex-extra dvipng`

**Latex Mac:**

Install the full [MacTex](http://www.tug.org/mactex/) installation or install the smaller [BasicTex](http://www.tug.org/mactex/morepackages.html) and add *ucs* and *dvipng* packages:
```sh
sudo tlmgr install ucs dvipng
```


Then, to create HTML doc:

`make html`

Your files are in `_build\html`

To create a pdf doc:

`make latexpdf`

Your files are in `_build\latex`

To recreate the API doc of a module, use sphinx-apidocs. For example when doc is in poppy-humanoid/poppy-humanoid/software/poppy_humanoid, output path is poppy-humanoid/doc and you want to overwrite previous doc (-f option):

`sphinx-apidoc -f  -o poppy-humanoid/doc poppy-humanoid/poppy-humanoid/software/poppy_humanoid`

Translation:

Follow the instructions of [http://sphinx-doc.org/latest/intl.html](http://sphinx-doc.org/latest/intl.html) . Warning! I had to use version 11 of transifex-client to uploads my docs (pip install transifex-client==0.11.1.beta)

Transifex project is poppy-docs : https://www.transifex.com/poppy-project/poppy-docs/






