#!/usr/bin/env python
import os
import sys
import time
from multiprocessing import Pool, Lock

import signal

maxParallelism = 20

pool = Pool(processes=maxParallelism)

lock = Lock()

def output(msg):
    msg = '%s%s' % (msg, os.linesep)
    #with lock:
    sys.stdout.write(msg)

def example(input):
    while(True):
    	output(u'pid:%d got input \"%s\"' % (os.getpid(), str(input)))
        time.sleep(float(input)  + 10.0)

def execute(f, inputsList):
#     output(u'Executing function %s on input of size %d with maximum parallelism of %d'
#            % (funcName.__name__, len(inputsList), maxParallelism))
    results = pool.map(f,inputsList)
    pool.close()
#     output(u'Function %s executed on input of size %d  with maximum parallelism of %d'
#            % (funcName.__name__, len(inputsList), maxParallelism))
    # if all parallel executions executed well - the boolean results list should all be True
    return all(results)

if __name__ == "__main__":
    inputsList=[str(i) for i in range(20)]
    execute(example, inputsList)
