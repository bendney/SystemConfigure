#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./config.sh
. ./colors.sh

#send a message
verbose "Installing vim"

#add the dependencies
yum -y install vim

#move the config file to user's path
cp -r ./vim/vim ~/.vim
cp ./vim/vimrc ~/.vimrc

#send a message
verbose "VIM installed"
