#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./config.sh
. ./colors.sh

#send a message
verbose "Installing bashrc"

#add the dependencies
#yum -y install bashrc

#move the config file to user's path
cp ./bash/bashrc ~/.bashrc

#send a message
verbose "bashrc installed"
