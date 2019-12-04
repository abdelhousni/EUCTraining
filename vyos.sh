# different problems
## source : http://z0b.kapsi.fi/vyatta_vbox.php
## Message "INIT: Id "TO" respawning too fast: disabled for 5 minutes"
$ delete system console
## change keyboard layout
$ sudo dpkg-reconfigure keyboard-configuration


## activate ssh
set service ssh
## activate snmp
configure
set service snmp community afce2019
set service snmp contact admin@localdomain
set service snmp listen-address 172.22.23.xxx
save

## add ssh public keys
## source : https://vyos.readthedocs.io/en/latest/services/ssh.html
configure
set system login user vyos authentication public-keys 'identifier' key "AAAAB3Nz...."
set system login user vyos authentication public-keys 'identifier' type "ssh-rsa"
commit
