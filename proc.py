#!/usr/bin/env python

from subprocess import Popen,PIPE
import shlex
from sys import stdout

command = "ls -l src/test/resources/test-exec"
args = shlex.split(command)

p = Popen(args,stdout=PIPE)

s,e = p.communicate()
stdout.write(s)