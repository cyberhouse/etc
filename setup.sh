#!/bin/sh
USERNAME=`whoami`
DIR="$( cd "$( dirname "$0" )" && pwd )"
HOME=`/bin/sh -fc "echo ~$USERNAME"`

ln -s $DIR/zsh/zshrc $HOME/.zshrc

ln -s $DIR/vim $HOME/.vim
ln -s $DIR/vim/vimrc $HOME/.vimrc
ln -s $DIR/vim/gvvimrc $HOME/.gvimrc

ln -s $DIR/tmux/tmux.conf $HOME/.tmux.conf

ln -s $DIR/git/gitconfig $HOME/.gitconfig
ln -s $DIR/git/gitconfig-local $HOME/.gitconfig-local

touch $HOME/.z

cd $DIR && git submodule update --init --recursive

echo "Use ~/.gitconfig-local for git settings not to be tracked by git, e.g. 'name' and 'email'."
echo "Use ~/.zshrc-local for custom zsh settings like custom aliases"

