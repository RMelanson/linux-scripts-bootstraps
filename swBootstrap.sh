#!/bin/bash
swCurrDir=$PWD

#Set Cloning Properties
pkg=stockWidgets
gitRepo="linux-scripts-api-rest-stockWidgets.git"
installDir="/tmp/scripts/api/SW/REST"
if [ "$1" = "ssh" ]; then
   clone="git clone git@github.com:RMelanson/"
else
   clone="git clone https://github.com/RMelanson/"
fi

# Clone $pkg
echo Executing $clone$gitRepo $installDir
$clone$gitRepo $installDir

# Setup $pkg
cd $installDir
. ./setup.sh

cd $swCurrDir
