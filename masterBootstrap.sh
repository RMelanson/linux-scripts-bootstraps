#!/bin/bash
masterCurrDir=$(PWD)

#INITIAL BASIC TOOLS INSTALL
yum update -y

#INSTALL GIT
yum install git -y
#INSTALL GITHUB ACCESS KEYS
gitHubDir=/tmp/scripts/utils/gitHub
git clone git@github.com:RMelanson/linux-scripts-utils-gitHub-sshKeys.git $gitHubDir
cd $gitHubDir
. ./setup.sh

#------------------- INSTALL MASTER BOOTSTRAP APPLICATIONS --------------------
bootStrapsDir=/var/scripts/bootstraps
git clone git@github.com:RMelanson/linux-scripts-bootstraps.git $bootStrapsDir
echo bootstraps installed in directory $bootStrapDir
cd $bootStrapsDir
. ./setup.sh

cd $masterCurrDir
