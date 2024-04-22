#!/usr/bin/bash
apk update&&apk upgrade
apk add node
cat packages.txt | xargs npm install -g
chmod +x nvim-setup.sh
./nvim-setup.sh


