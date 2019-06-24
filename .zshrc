#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# Customize to your needs...

alias prune="git fetch --all -p; git branch -vv | grep \": gone]\" | awk '{ print \$1 }' | xargs -n 1 git branch -D"
alias detached='f() { /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --app=$1 };f'

export PATH=$PATH:/Users/joeprevite/.npm-global/bin
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=/usr/local/share/dotnet:$PATH

# Android Development
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
