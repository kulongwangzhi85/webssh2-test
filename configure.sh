#!/bin/sh

sed -i "/port/ s/2222/$PORT/" /usr/src/config.json

cd /usr/src

exec npm run start
