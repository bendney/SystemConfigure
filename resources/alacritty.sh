#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./config.sh
. ./colors.sh

#send a message
verbose "Installing alacritty"

#add the dependencies
yum -y install alacritty

#move the config file to user's path
cp -r ./alacritty/* ~/.config/alacritty/

#send a message
verbose "Alacritty installed"
