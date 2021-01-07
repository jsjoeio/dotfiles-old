#!/bin/bash
# change timezone to Phoenix
# This is important because when I open the daily note in Foam
# I want it to be today in my timezone
export TZ="/usr/share/zoneinfo/America/Phoenix"

# install zsh and set it up
echo "Installing zsh..."
sudo apt install -y zsh
echo "Installed zsh version $(zsh --version)"
sudo chsh -s $(which zsh) $USER

# install the zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# install jq
# helpful for installing vsx extensions
echo "Installing jq..."
sudo apt-get -y install jq
echo "Installed jq version $(jq --version)"

# for developing code-server
export PKG_CONFIG_PATH=/usr/bin/pkg-config

# install Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env

# install GNUPG
# needed to generate key to verify commits
sudo apt-get install gnupg

