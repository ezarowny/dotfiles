# dotfiles
Hey! You found my dotfiles!

## Linking
It would be wisest to just symlink most of the important files instead of copying them. At some point I will make a script that does this. For now, execute the following from your home directory:

```bash
cp Development/dotfiles/zshrc .zshrc
ln -s Development/dotfiles/gvimrc .gvimrc
ln -s Development/dotfiles/tmux.conf .tmux.conf
ln -s Development/dotfiles/vim .vim
ln -s Development/dotfiles/vimrc .vimrc
```
