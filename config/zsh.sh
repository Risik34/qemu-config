#!/bin/sh

# Install Zsh
apk add zsh

# Install wget and git for fetching Oh My Zsh installation script
apk add wget git

# Install Oh My Zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Change the default shell to Zsh for the current user
chsh -s $(which zsh)

# Print a success message
echo "Zsh and Oh My Zsh have been successfully installed and set up."

