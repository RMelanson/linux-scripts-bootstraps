#!/bin/bash
webCurrDir=$PWD

#Set Cloning Properties
pkg=Web
gitRepo="linux-scripts-apps-web.git"
installDir="/tmp/scripts/apps/WEB"
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

cd $webCurrDir
