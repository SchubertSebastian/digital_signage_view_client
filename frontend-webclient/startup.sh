#!/bin/bash

echo "---- executing startup.sh ----"
# Remove the current served files
rm -r /usr/share/nginx/html/
# Copy the original to the nginx folder, so the host environment can be changed later
cp -a /opt/webclient/. /usr/share/nginx/html/ 

# If the new host is set search through all compiled js files and replace the original host
# If the host is NOT set the coping will reset the host from the last time. This happens on the 2 lines before
# This will only occure when the container is restarted
if [[ -n "$API_HOST" ]]; then
  find /usr/share/nginx/html/ -type f -exec sed -i "s~https://museum.dispway.com/api~$API_HOST~g" {} \;
fi
