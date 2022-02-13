#!/bin/bash

# https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/syncing-a-fork

# Prep:
# git remote add upstream https://github.com/MarlinFirmware/Marlin.git

BRANCH="bugfix-2.0.x"
git pull
git fetch upstream
git checkout ${BRANCH}
git merge upstream/${BRANCH}

