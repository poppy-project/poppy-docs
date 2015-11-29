#!/usr/bin/env python

import re
import sys

p = re.compile(ur'(\w+).gif')
subst = ur"\1.png"

for line in sys.stdin:
    result = re.sub(p, subst, line)
    sys.stdout.write(result)
