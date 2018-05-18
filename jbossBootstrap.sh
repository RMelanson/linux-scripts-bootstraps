#!/bin/bash
jbossBootCurrDir=$PWD
jbossDir=/tmp/scripts/apps/JBOSS
git clone git@github.com:RMelanson/linux-scripts-apps-jboss.git $jbossDir
cd $jbossDir
. ./setup.sh
cd $jbossBootCurrDir
