# Managed Packages

Ansible Role zur Verwaltung von Standardpaketen.

Default Variables
```yaml
managed_packages_enabled: true
managed_packages_install:
  - python
  - libselinux-python
  - NetworkManager
  - ufw
  - iftop
  - bmon
  - vim
  - htop
  - tmux
  - wget
  - whois
  - bind-utils
  - bash-completion
  - telnet
  - net-snmp-utils
  - net-tools
  - ipmitool
  - nfs-utils
  - bzip2
  - unrar
  - cifs-utils
  - dstat
  - iotop
  - expect
  - dos2unix
  - nmap
  - swaks
  - p7zip
  - strace
  - tcpdump
  - rsync
  - xclip
  - unzip
  - tree
  - xz
managed_packages_remove:
  - network-scripts
  - firewalld
  - cockpit
  - cockpit-bridge
  - cockpit-packagekit
  - cockpit-storaged
  - cockpit-system
  - cockpit-ws
```
