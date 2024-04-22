#!/bin/sh
apk update&&apk upgrade
apk add nodejs wget git npm 
./nvim-setup.sh
./zsh.sh
./ssh.sh


