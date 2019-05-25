#!/bin/bash

# Default Homeassistant backup script, downloaded from:
# https://www.home-assistant.io/docs/ecosystem/backup/backup_github/


cd /home/homeassistant/.homeassistant
source /srv/homeassistant/bin/activate
hass --script check_config

# Reset any automatic local commits
git reset --soft origin/master

git add .
git status
echo -n "Enter the Description for the Change: " [Minor Update]
read CHANGE_MSG
git commit -m "${CHANGE_MSG}"
git push origin master

exit
