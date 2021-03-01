# dotfiles

My dotfiles - used mostly with code-server

## How to Symlink files

Here's how to do it for the `.zshrc` file

```shell
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
```

source: https://stackoverflow.com/a/17958941/3015595

## How to manually install vsx files for `code-server`

```shell
curl 'https://open-vsx.org/api/foam/foam-vscode' | jq '.files.download' | xargs curl --compressed -L -o plugins/foam.vsix
```

## Neo Vim

If the Vim extension isn't working, you can use Neo Vim.

1. Install extension
2. Set path for it in Settings - /usr/bin/nvim
3. Reload Window

### Key repeating

To enable this globally on macOS, run:

```shell
defaults write -g ApplePressAndHoldEnabled -bool false
```

Note: this enables key-repeating globally on macOS. Enable with caution.
