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
    'specman',
    '-p', "load {}".format(os.path.join(root_dir, 'src/with_aop/e/environment')),
    '-p', "load {}".format(os.path.join(root_dir, 'src/with_aop/e/tests', args.test)),
    '-c', 'config print -hex',
    ]

if args.gui:
    cmd.extend(['-gui'])
else:
    cmd.extend(['-c', 'test'])

subprocess.check_call(cmd)
