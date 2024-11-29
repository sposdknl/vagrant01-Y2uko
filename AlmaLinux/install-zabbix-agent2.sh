#!/usr/bin/env bash

# Stažení balíčku pro instalaci zabbix repo
sudo rpm -Uvh https://repo.zabbix.com/zabbix/7.0/alma/9/x86_64/zabbix-release-latest.el9.noarch.rpm

# Instalace meta balíčku
sudo dnf clean all

# Instalace meta balíčku
sudo dnf install zabbix-agent2 zabbix-agent2-plugin-* -y

# Povoleni sluzby zabbix-agent2
sudo systemctl enable zabbix-agent2

# Restart sluzby zabbix-agent2
sudo systemctl restart zabbix-agent2

# EOF