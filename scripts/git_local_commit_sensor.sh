#!/bin/bash

# This script can be used as a sensor that commits the current set of
# config files and returns the hash.
#
# These local commits should never be pushed to the origin
#
# git_push_auto.sh should do a soft reset prior to push to avoid a long chain of
# automatically comitted commits pushed into the origin

cd /home/homeassistant/.homeassistant
source /srv/homeassistant/bin/activate

git reset . > /dev/null
git add . > /dev/null

# Local temp commit, should never be pushed.
git commit -m "local commit" > /dev/null

SHORTHASH="$(git rev-parse HEAD | cut -c 1-7)"

echo $SHORTHASH

exit
