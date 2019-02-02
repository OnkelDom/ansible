# My Ansible Environment

This is my Ansible Project and my goal is that i can deploy and manage a complete company environment with it included all basic services.

The roles with prefix "managed_" are system base configurations and or basics services like sshd, chrony or firewall.

# Currently my project is ONLY FOR CENTOS 7+

Currently i write this for Ubuntu 18.04 and CentOS 7.6. Any role is on development.

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
 - managed_interfaces # feature work for more complexed configs
 - managed_logrotate  # feature work for more complexed logs and items
 - managed_rsyslog    # feature work for ssl support and encrypted transfers
 - managed_auditbeat  # feature work for full elk stack
 - managed_filebeat   # feature work for full elk stack
 - managed_metricbeat # feature work for full elk stack
 - managed_users      # currently not needed
 - managed_keys       # currently not needed
# applications:
- slapd
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
- squid
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
- nfs https://github.com/shelleg/ansible-role-nfs
- webservers
  - lighthttpd
  - caddy
  - nginx https://github.com/shelleg/ansible-role-nginx
  - apache
- openvpn
- openldap
- ldapadmin https://github.com/shelleg/ansible-role-php-ldapadmin
- openssh_ca
- oauth2
- samba5dc
- letsencrypt
- nextcloud
- wordpress
- haproxy
- keepalived
- plex
- rclone
- jdownloader
- sonarr
- gitlab
- jenkins https://github.com/shelleg/ansible-role-jenkins
- grafana https://github.com/shelleg/ansible-role-grafana
- zabbix
  - webfrontend
  - server
  - proxy
  - java-gateway
- database
  - mysql https://github.com/shelleg/ansible-role-mysql
  - postgresql
  - mongodb
- atlassian
 - jira https://github.com/shelleg/ansible-role-jira https://github.com/shelleg/ansible-playbook-jira
```
