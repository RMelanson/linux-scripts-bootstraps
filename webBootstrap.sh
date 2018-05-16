#!/bin/bash
webCurrDir=$PWD
devToolsDir=/tmp/scripts/apps/WEB
git clone https://github.com/RMelanson/linux-scripts-apps-web.git $devToolsDir
cd $devToolsDir
. ./setup.sh
cd $webCurrDir
