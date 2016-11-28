#!/bin/bash
branch=`git rev-parse --abbrev-ref HEAD`
find . -name ".git" -type d | sed 's/\/.git//' |  xargs -P10 -I{} git -C {} push -u origin $branch
