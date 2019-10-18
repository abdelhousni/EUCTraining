# source : http://z0b.kapsi.fi/vyatta_vbox.php
# Message "INIT: Id "TO" respawning too fast: disabled for 5 minutes"
delete system console
# change keyboard layout
sudo dpkg-reconfigure keyboard-configuration


# activate ssh
set service ssh
# activate snmp
set service snmp community cpas
set service snmp contact sysadmin@cpasbxl.brussels
set service snmp listen-address 172.22.23.xxx

# source : https://vyos.readthedocs.io/en/latest/services/ssh.html
# add ssh public keys
