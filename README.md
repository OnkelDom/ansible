# My Ansible Environment

This is my Ansible Project and my goal is that can deploy and manage a complete company environment with it included all basic services.

The roles with prefix "managed_" are system base configurations and or basics services like sshd, chrony or firewall.

# Currently my project is ONLY FOR CENTOS 7+

When i finished this for CentOS 7+, i implement it for debian like systems too.

For the individual role readme please go to the role folder

I use the following Ansible modules for managed usecases:

Cron: [Cron with Ansible](https://docs.ansible.com/ansible/latest/modules/cron_module.html)
Repos: [Yum Repos with Ansible](https://docs.ansible.com/ansible/latest/modules/yum_repository_module.html)
Mounts: [Mounts with Ansible](https://docs.ansible.com/ansible/latest/modules/mount_module.html)
Download: [Downloads with Ansible](https://docs.ansible.com/ansible/latest/modules/get_url_module.html)
Limits: [Limits with Ansible](https://docs.ansible.com/ansible/latest/modules/pam_limits_module.html)
Modprobe: [Modprobe with Ansible](https://docs.ansible.com/ansible/latest/modules/modprobe_module.html)
Kernel Blacklist: [Kernel Blacklist with Ansible](https://docs.ansible.com/ansible/latest/modules/kernel_blacklist_module.html)

Next roles:
```
# Base configurations:
 - managed_fail2ban
 - managed_logrotate
 - managed_rsyslog
 - managed_auditbeat
 - managed_filebeat
 - managed_metricbeat
# applications:
- dnsmasq
  - cache
  - resolver
  - dhcp
  - pxe
  - tftp
- dns
  - bind
  - unbound
  - powerdns
- dhcpd
- elastic
  - logstash
  - elasticsearch
  - kibana
- mail
  - postfix
  - dovecot
  - opendkim
  - opendmarc
  - rspamd
- clamav
- nfs
- webservers
  - lighthttpd
  - caddy
  - nginx
  - apache
- openvpn
- openldap
- openssh_ca
- oauth2
- samba5dc
- letsencrypt
- nextcloud
- wordpress
- plex
- rclone
- jdownloader
- sonarr
- gitlab
- zabbix
  - webfrontend
  - server
  - proxy
  - java-gateway
- database
  - mysql
  - postgresql
  - mongodb
```
