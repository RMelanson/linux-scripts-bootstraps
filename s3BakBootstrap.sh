#!/bin/bash
# Ensure script is running under root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root or under sudo"
  exit -1
fi

if [ -z "$1" ]; then
   branch=master
else
   branch=$1
fi

s3BackupCurrDir=$PWD

#Set Cloning Properties
pkg=devTools
gitRepo="linux-scripts-bootstraps.git"
installDir="/tmp/scripts/utils/s3Backups"
if [ -f ~/.ssh/gitHub.key ]; then
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

cd $s3BackupCurrDir
