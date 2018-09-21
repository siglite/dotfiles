# dotfiles

## Install

```console
$ git clone --recursive https://github.com/siglite/dotfiles ~/.dotfiles
```

### Vim

```console
$ [ ! -d ~/.vim/pack ] && mkdir -p ~/.vim/pack
$ ln -s ../.dotfiles/vimrc ~/.vim/
$ ln -s ../../.dotfiles/vim-plugin-manually ~/.vim/pack/self
```
