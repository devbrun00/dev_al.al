#!/bin/bash
git remote rm origin
git remote add  originhttps://github.com/devbrun00/dev_al.al
git fetch
git branch --set-upstream-to=origin/develop develop
git pull