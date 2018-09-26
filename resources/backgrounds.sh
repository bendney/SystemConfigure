#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./config.sh
. ./colors.sh

#send a message
verbose "Installing backgrounds"

#add the dependencies
#yum -y install backgrounds

#move the config file to user's path
cp -r ./backgrounds/* /usr/share/backgrounds

#restart backgrounds
#systemctl restart backgounds

#send a message
verbose "Backgrounds installed"
