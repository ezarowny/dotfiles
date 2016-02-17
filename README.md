# dotfiles
Hey! You found my dotfiles!

## Cloning

This repository contains submodules in the vim folder. You'll want to initialize them when cloning. Try something like this:

```bash
git clone --recursive git@github.com:ezarowny/dotfiles.git
```

If you've already cloned the repository, you can still easily initialize the submodules:

```bash
git submodule update --init --recursive
```

## Linking
It would be wisest to just symlink the important files instead of copying them. At some point I will make a script that does this. For now:

```bash
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/gvimrc .gvimrc
ln -s dotfiles/tmux.conf .tmux.conf
ln -s dotfiles/vim .vim
```
