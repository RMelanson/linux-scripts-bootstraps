#!/bin/bash
jbossBootCurrDir=$PWD
jbossDir=/tmp/scripts/apps/JBOSS
git clone https://github.com/RMelanson/linux-scripts-apps-jboss.git $jbossDir
cd $jbossDir
. ./setup.sh
cd $jbossBootCurrDir
