#!/usr/bin/env python

import re
import sys

p = re.compile(ur'(!\[[\w ]+]\()(../)(img/([\w\-\_]+\/)*[\w\-\_]+\.\w+\))', re.DOTALL)
subst = ur"\1\3"

for line in sys.stdin:
    result = re.sub(p, subst, line)
    sys.stdout.write(result)
