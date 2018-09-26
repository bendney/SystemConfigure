#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./config.sh
. ./colors.sh

#send a message
verbose "Installing numix theme"

#move to /tmp to prevent a red herring error when running clone 
cwd=$(pwd)
cd /tmp

#install theme
git clone https://github.com/numixproject/numix-icon-theme-circle.git;
sudo cp -r numix-icon-theme-circle/Numix-Circle /usr/share/icons;
sudo cp -r numix-icon-theme-circle/Numix-Circle-Light /usr/share/icons;

git clone https://github.com/shimmerproject/Numix.git;
sudo cp -r Numix /usr/share/themes;

git clone https://github.com/zagortenay333/numix-cinnamon.git;
sudo cp -r numix-cinnamon/Numix-Cinnamon /usr/share/themes;
cd $cwd

#send a message
verbose "Themes installed"
