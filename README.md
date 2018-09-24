# dotfiles

## Install

```console
$ git clone --recursive https://github.com/siglite/dotfiles ~/.dotfiles
```

### Bash

```console
$ [ -e ~/.profile ] && mv ~/.profile ~/.profile.old
$ ln -s .dotfiles/.profile ~/
```

### Vim

```console
$ [ ! -d ~/.vim/pack ] && mkdir -p ~/.vim/pack
$ ln -s ../.dotfiles/vimrc ~/.vim/
$ ln -s ../../.dotfiles/vim-plugin-manually ~/.vim/pack/self
```
