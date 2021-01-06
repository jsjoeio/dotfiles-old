#!/bin/bash
# change timezone to Phoenix
# This is important because when I open the daily note in Foam
# I want it to be today in my timezone
export TZ="/usr/share/zoneinfo/America/Phoenix"

# install zsh and set it up
echo "Installing zsh..."
sudo apt install -y zsh
echo "Installed zsh version $(zsh --version)"
sudo chsh -s $(which zsh) coder

# install jq
# helpful for installing vsx extensions
echo "Installing jq..."
sudo apt-get -y install jq
echo "Installed jq version $(jq --version)"

# for developing code-server
export PKG_CONFIG_PATH=/usr/bin/pkg-config

