#!/bin/bash
mySqlCurrDir=$PWD
mySqlDir=/tmp/scripts/apps/db/MYSQL
git clone git@github.com:RMelanson/linux-scripts-apps-db-mysql.git $mySqlDir
cd $mySqlDir
. ./setup.sh
cd $mySqlCurrDir
