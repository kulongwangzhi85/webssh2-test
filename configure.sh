#!/bin/sh

sed -i "/port/ s/2222/$PORT/" /usr/src/config.json

cd /usr/src
cat /usr/src/config.json

exec npm run start
