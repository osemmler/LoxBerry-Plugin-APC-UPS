#!/bin/bash

ARGV0=$0 # Zero argument is shell command
ARGV1=$1 # First argument is temp folder during install
ARGV2=$2 # Second argument is Plugin-Name for scipts etc.
ARGV3=$3 # Third argument is Plugin installation folder
ARGV4=$4 # Forth argument is Plugin version
ARGV5=$5 # Fifth argument is Base folder of LoxBerry
shopt -s dotglob

echo "<INFO> Moving back existing scripts"
mv -v /tmp/$ARGV1\_upgrade/data/old_scripts.tgz $ARGV5/data/plugins/$ARGV3/ 

echo "<INFO> Moving back existing log files"
mv -v /tmp/$ARGV1\_upgrade/log/* $ARGV5/log/plugins/$ARGV3/
rm -rf $ARGV5/log/plugins/$ARGV3/apc_ups.log

echo "<INFO> Remove temporary folders"
rm -r /tmp/$ARGV1\_upgrade

# Exit with Status 0
exit 0
