#!/bin/bash
PATH=/www/server/panel/pyenv/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
pluginPath=/www/server/panel/plugin/pythonmamager
##online code
P_NAME=$1
GIT_URI=$2
P_PATH=$3
git clone $GIT_URI \'$pluginPath/tmp/$P_NAME\'
\cp -r $pluginPath/tmp/$P_NAME/* $P_PATH
# rm -rf $pluginPath/tmp/*

