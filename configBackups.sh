#!/bin/sh

####################################################################
#								   #
# Description: Rsync's all needed config files in case you need to #
#              use them somewhere else.				   #
# Version: 1.0.0						   #
# Date Modified: 11/16/2016					   #
####################################################################

# Set the default locations for each config file
sshConfig="~/.ssh/config"
vimConfig="/etc/vim/vim.rc"

# Set the directory that the configs will be backed-up to
backupLocation="/home/blake/OneDrive/Configuration Backup"

cd $backupLocation

# Make sure backup directory exists
if [ -d $backupLocation ]; then
    echo "Directory Exists. Begin copying.../n"
else
    mkdir $backupLocation
fi

# Start the copying
rsync -avr $sshConfig $backupLocation
rsync -avr $vimConfig $backupLocation
