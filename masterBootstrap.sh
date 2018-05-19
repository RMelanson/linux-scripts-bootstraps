#!/bin/bash

#INITIAL BASIC TOOLS INSTALL
yum update -y

#INSTALL GIT
yum install git -y

#Set Cloning Properties
pkg=Bootstraps
bsCurrDir=$PWD
gitRepo="linux-scripts-bootstraps.git"
installDir="/var/scripts/bootstraps/test"
if [ "$1" = "ssh" ]; then
   clone="git clone git@github.com:RMelanson/"
else
   clone="git clone https://github.com/RMelanson/"
fi

# Clone $pkg
echo Executing $clone$gitRepo $installDir
$clone$gitRepo $installDir

exit 1

# Setup $pkg
cd $installDir
. ./setup.sh

cd $bsCurrDir
