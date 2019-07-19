#!/bin/bash
# $1: phrase to find
# $2: phrase to replace $1

sed -i 's/\<'$1'\>/'$2'/' $(grep -lwr --include="*.asm" --exclude-dir="crowdmap" --exclude-dir="utils" --exclude-dir=".git" --exclude-dir="animatedgifs" --exclude-dir="patch" $1)
