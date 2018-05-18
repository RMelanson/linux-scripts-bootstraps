#!/bin/bash
swCurrDir=$PWD
swDir=/tmp/scripts/api/SW/REST
alias cdsw='cd $swDir'
git clone git@github.com:RMelanson/linux-scripts-api-rest-stockWidgets.git $swDir
cd $swDir
. ./setup.sh
cd $swCurrDir
