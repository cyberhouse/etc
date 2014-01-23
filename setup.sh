#!/bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"

ln -s $DIR/zsh/zshrc ~/.zshrc

ln -s $DIR/vim ~/.vim
ln -s $DIR/vim/vimrc ~/.vimrc
ln -s $DIR/vim/gvvimrc ~/.gvimrc

ln -s $DIR/tmux/tmux.conf ~/.tmux.conf

ln -s $DIR/git/gitconfig ~/.gitconfig
ln -s $DIR/git/gitconfig-local ~/.gitconfig-local

touch ~/.z

cd $DIR && git submodule update --init --recursive

echo "Use ~/.gitconfig-local for git settings not to be tracked by git, e.g. 'name' and 'email'."
