#!/bin/bash

# Default Homeassistant backup script, downloaded from:
# https://www.home-assistant.io/docs/ecosystem/backup/backup_github/

# Modified on 05/23/2019


cd /home/homeassistant/.homeassistant
source /srv/homeassistant/bin/activate

git add .
git commit -m "auto push triggered by HASS UI"
git push origin master

exit
