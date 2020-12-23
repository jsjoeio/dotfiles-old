# dotfiles
My dotfiles

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