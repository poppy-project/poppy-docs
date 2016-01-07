#!/usr/bin/env python

from subprocess import Popen, PIPE
from glob import glob
from os import remove

from argvee import Application

app = Application()


builder = 'pandoc'
sources = sorted(glob('*/*.md'))
common_options = ['--standalone',
                  '-f', 'markdown_github+pandoc_title_block+link_attributes',
                  '--toc', '--toc-depth', '2',
                  '--chapters', '--number-sections']

filename = 'poppy-docs'


def build(format, extra_options):
    print('Generating {}...'.format(format))

    p1 = Popen(['cat'] + sources, stdout=PIPE)
    p2 = Popen(['python', 'path-corrector.py'], stdin=p1.stdout, stdout=PIPE)

    if format == 'pdf':
        p2 = Popen(['python', 'pdf-adaptator.py'], stdin=p2.stdout, stdout=PIPE)

    p3 = Popen([builder] + common_options + extra_options, stdin=p2.stdout, stdout=PIPE)

    return p3.communicate()[0]


@app.cmd
def html(template='templates/default.html5'):
    build('html', ['--template', template,
                   '-o', '{}.html'.format(filename)])


@app.cmd
def pdf(template='templates/default.latex'):
    build('pdf', ['--variable', 'geometry:a4paper',
                  '--template', template,
                  '-o', '{}.pdf'.format(filename)])


@app.cmd
def all():
    html()
    pdf()


@app.cmd
def clean():
    try:
        for ext in 'html', 'pdf':
            remove('{}.{}'.format(filename, ext))
    except Exception as e:
        print('Could not clean properly: {}'.format(e.strerror))

app.run()
