#!/bin/bash
devToolsCurrDir=$PWD
devToolsDir=/tmp/scripts/devtools
git clone https://github.com/RMelanson/linux-scripts-devtools.git $devToolsDir
cd $devToolsDir
. ./setup.sh
cd $devToolsCurrDir
