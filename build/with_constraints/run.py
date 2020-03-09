#!/bin/env python

import argparse
import os
import subprocess


root_dir = os.path.abspath(os.path.join(os.path.dirname(os.path.realpath(__file__)), '../..'))

parser = argparse.ArgumentParser()
parser.add_argument('test')
parser.add_argument('--gui', '-g', action='store_true')
args = parser.parse_args()

cmd = [
    'xrun',
    '-q',
    '-uvm', '-define', 'UVM_NO_DEPRECATED', '-uvmhome', 'CDNS-1.2',
    '-incdir', os.path.join(root_dir, 'src/common/sv'),
    os.path.join(root_dir, 'src/common/sv/*.sv'),
    '-incdir', os.path.join(root_dir, 'submodules/constraints/src/main/sv'),
    '-incdir', os.path.join(root_dir, 'submodules/constraints/src/main/headers'),
    os.path.join(root_dir, 'submodules/constraints/src/main/sv/*.sv'),
    '-incdir', os.path.join(root_dir, 'src/with_constraints/sv'),
    os.path.join(root_dir, 'src/with_constraints/sv/*.sv'),
    '+UVM_TESTNAME={0}'.format(args.test)
    ]

if args.gui:
    cmd.extend(['-gui', '-linedebug'])

subprocess.check_call(cmd)
