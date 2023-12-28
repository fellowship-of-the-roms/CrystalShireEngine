#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Find unreferenced labels from a list, ignoring specific patterns.
Usage: utils/unreferenced.py labels.txt > unreferenced.txt

You can create the labels.txt by running: cat pokecrystal.sym | grep -v "\." | awk '{print $2}' > labels.txt
"""

from __future__ import print_function

import sys
import glob
import subprocess

def find_unreferenced_labels(labelfile):
    with open(labelfile, 'r') as f:
        for line in f:
            label = line.strip()
            if line and not is_ignored(label) and is_unreferenced(label):
                print(label)

def is_ignored(label):
    # Check if the label matches the specified patterns
    return label.startswith('Tileset') or \
           label.endswith('_MapScripts') or \
           label.endswith('_MapEvents') or \
           label.endswith('_Blocks')

def is_unreferenced(label):
    args = ['grep', '-r', '--include=*.asm', label] + glob.glob('*')
    grep = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    grep_stdout, grep_stderr = grep.communicate()
    return grep_stdout.decode('utf8').count(label) == 1

def main():
    if len(sys.argv) < 2:
        print('Usage: %s labels.txt' % sys.argv[0])
        print('       Find unreferenced labels from a list')
        sys.exit(1)

    labelfile = sys.argv[1]
    find_unreferenced_labels(labelfile)

if __name__ == '__main__':
    main()
