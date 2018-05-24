#!/bin/bash
# Ensure script is running under root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root or under sudo"
  exit -1
fi

mySqlCurrDir=$PWD

#Set Cloning Properties
pkg=mysql
gitRepo="linux-scripts-apps-db-mysql.git"
installDir="/tmp/scripts/db/MYSQL"
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

cd $mySqlCurrDir
