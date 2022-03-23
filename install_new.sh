#!/bin/bash
PATH=/www/server/panel/pyenv/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
pluginPath=/www/server/panel/plugin
##online code

Install_PythonMamage(){
  git clone https://github.com/haoheiyo/pythonmamager.git
  rsync -a --exclude config.json pythonmamager $pluginPath/
  touch $pluginPath/pythonmamager/config.json
  bash $pluginPath/pythonmamager/install.sh install
  rm -rf pythonmamager
}

Install_PythonMamage