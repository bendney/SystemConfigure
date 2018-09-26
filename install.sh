#!/bin/sh

# Linux install

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./resources/config.sh
. ./resources/colors.sh

# Installing basics packages
yum -y install htop epel-release git openssl

# config vim
resources/vim.sh

# install bashrc
resources/bash.sh

# install fonts
resources/fonts.sh

# install backgrounds
resources/backgounds.sh

# install themes
#resources/themes.sh

#add the database schema, user and groups
resources/finish.sh
