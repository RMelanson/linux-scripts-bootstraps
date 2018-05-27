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

swTestDataCurrDir=$PWD
baseDir=/tmp/scripts
subDir=apps
pkg=SW_TEST_DATA
installDir="$baseDir/$subDir/$pkg"
gitRepo="linux-scripts-apps-sw-test-data.git"

#Set Cloning Properties
installDir="/tmp/scripts/apps/SW/test/data"
if [ -f ~/.ssh/gitHub.key ]; then
   clone="git clone -b $branch git@github.com:RMelanson/"
else
   clone="git clone -b $branch https://github.com/RMelanson/"
fi

# Clone $pkg
echo Executing $clone$gitRepo $installDir
$clone$gitRepo $installDir

# Setup $pkg
cd $installDir
. ./setup.sh

cd $swTestDataCurrDir
