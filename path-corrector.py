#!/usr/bin/env python

import re
import sys

p = re.compile(ur'(!\[[\w ]+]\()(../)(img/([\w\-\_]+\/)*\w+\.\w+\))', re.DOTALL)
subst = ur"\1\3"

result = re.sub(p, subst, sys.stdin.read())
sys.stdout.write(result)
