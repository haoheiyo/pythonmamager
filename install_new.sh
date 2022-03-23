#!/bin/bash
PATH=/www/server/panel/pyenv/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
pluginPath=/www/server/panel/plugin/pythonmamager
##online code

Install_PythonMamage(){
  if [ -d $pluginPath ]; then
    Uninstall_PythonMamage
  fi
  git clone https://github.com/haoheiyo/pythonmamager.git $pluginPath
  bash $pluginPath/install.sh install
}

Uninstall_PythonMamage()
{
	rm -rf $pluginPath
	rm -rf /root/.pyenv
	rm -rf /.pyenv
	systemctl disable pythonmamager
	rm -f /etc/init.d/pythonmamager
	systemctl disable bt_pym
	rm -f /etc/init.d/bt_pym
	sed -i "/pyenv/d" /root/.bashrc
	echo 'Successify'
}
Install_PythonMamage