#!/usr/bin/env bash

# InspIRCd-Panel provision script, written by Som
set -e
set -u

_author="Som / somsubhra1 [at] xshellz.com"
_package="InspIRCd-Panel"
_version="1.1"

echo "Running provision for package $_package version: $_version by $_author"

dir="inspircd-2.0.24"
cd ~

#checks for inspircd directory
if [ ! -d $dir ]
then
 echo "InspIRCd Directory doesn't exist in $HOME. Please install InspIRCd first"
 exit
fi

cd $dir

#help
if [ $input == 'help' ]
then
 echo "start - Start InspIRCd"
 echo "stop - Stop InspIRCd"
 echo "status - Show InspIRCd Status"
 echo "restart - Restarts InspIRCd"
 echo "rehash - Rehashes InspIRCd configuration file"
 echo "debug - Launches InspIRCd within the gdb debugger if installed"
 echo "help - Shows this help"
 echo "Please note all the operations are CASE SENSITIVE"

#start
elif [ $input == "start" ]
then
 ./inspircd start
 
#stop
elif [ $input == "stop" ]
then
 ./inspircd stop

#status
elif [ $input == "status" ]
then
 ./inspircd status

#restart
elif [ $input == "restart" ]
then
 ./inspircd restart

#rehash
elif [ $input == "rehash" ]
then
 ./inspircd rehash

#debug
elif [ $input == "debug" ]
then
 ./inspircd debug

#default
else
 echo "$input is an unknown operation. Please type help to see all operations"

fi

echo "Provision done, successfully."
			