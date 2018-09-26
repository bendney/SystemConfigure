#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./config.sh
. ./colors.sh

#send a message
verbose "Installing fonts"

#add the dependencies
#yum -y install font-manager

#move the config file to user's path
cp -r ./fonts/* /usr/share/fonts

#restart fonts
#systemctl restart fonts

#send a message
verbose "Fonts installed"
