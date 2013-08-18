#!/bin/sh
ln -s ~/etc/zsh/zshrc ~/.zshrc

ln -s ~/etc/vim ~/.vim
ln -s ~/etc/vim/vimrc ~/.vimrc
ln -s ~/etc/vim/gvvimrc ~/.gvimrc

ln -s ~/etc/tmux/tmux.conf ~/.tmux.conf

ln -s ~/etc/git/gitconfig ~/.gitconfig
ln -s ~/etc/git/gitconfig-local ~/.gitconfig-local

touch ~/.z

echo "Use ~/.gitconfig-local for git settings not to be tracked by git, e.g. 'name' and 'email'."
