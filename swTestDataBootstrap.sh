#!/bin/bash
swTestDataCurrDir=$PWD
swDir=/tmp/scripts/apps/SW/test/data
git clone https://github.com/RMelanson/linux-scripts-apps-sw-test-data.git $swDir
cd $swDir
. ./setup.sh
cd $swTestDataCurrDir
