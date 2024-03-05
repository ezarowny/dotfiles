# dotfiles
Hey! You found my dotfiles!

## Setup
It would be wisest to just symlink most of the important files instead of copying them. At some point I will make a script that does this. For now, execute the following from your home directory:

```bash
cp Development/dotfiles/zshrc .zshrc
cp Development/dotfiles/config/pip/pip.conf .config/pip/
ln -s Development/dotfiles/gvimrc .gvimrc
ln -s Development/dotfiles/tmux.conf .tmux.conf
ln -s Development/dotfiles/vim .vim
ln -s Development/dotfiles/vimrc .vimrc
```

Next, download [git-prompt.sh](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) and move it to your home directory with `mv Downloads/git-prompt.sh ./.git-prompt.sh`.

Finally, open a new terminal, open vim and run `PlugUpdate | PlugUpgrade`.
