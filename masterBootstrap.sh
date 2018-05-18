#!/bin/bash
masterCurrDir=$(PWD)

#INITIAL BASIC TOOLS INSTALL
yum update -y

#INSTALL GIT
yum install git -y

#INSTALL GITHUB CONFIGURATION
echo host github.com                 >> ~/.ssh/config
echo  HostName github.com            >> ~/.ssh/config
echo "StrictHostKeyChecking no"      >> ~/.ssh/config
echo  IdentityFile ~/.ssh/gitHub.key >> ~/.ssh/config
echo  User git                       >> ~/.ssh/config

ssh-keygen -t rsa -N "" -f ~/.ssh/gitHub.key
echo "<Copy the following ssh public key to github settings for ssh keys>"
cat ~/.ssh/gitHub.key.pub

gitHubDir=/tmp/scripts/utils/gitHubssh-keygen -t rsa -N "" -f ~/.ssh/gitHub.key
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
