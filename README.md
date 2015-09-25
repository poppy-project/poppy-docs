# Work In Progress

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


Then, to create HTML doc:

`make html`

Your files are in `_build\html`

To create a pdf doc:

`make latexpdf`

Your files are in `_build\latex`






