#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./config.sh
. ./colors.sh

#welcome message
echo ""
verbose "Installation has completed."
echo ""
warning "*------------------------------------------*"
warning "* NOTE: Please save the above information. *"
warning "* REBOOT YOUR SERVER TO COMPLETE INSTALL.  *"
warning "*------------------------------------------*"
echo ""

