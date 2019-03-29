#!/usr/bin/bash

git checkout master && rm -rf * && git checkout source -- $(git ls-tree --name-only -r source | grep -E 'build/*') && git mv build/* . && rm -rf build && git add --all && git commit -m \"deployed\" && git push && git checkout source