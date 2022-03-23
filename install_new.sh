#!/bin/bash
PATH=/www/server/panel/pyenv/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
pluginPath=/www/server/panel/plugin/pythonmamager
##online code

Install_PythonMamage(){
  git clone https://github.com/haoheiyo/pythonmamager.git $pluginPath
  bash $pluginPath/install.sh
}
Install_PythonMamage