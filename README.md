# My Ansible Environment

This is my Ansible Project and my goal is that can deploy and manage a complete company environment with it included all basic services.

The roles with prefix "managed_" are system base configurations and or basics services like sshd, chrony or firewall.

# Currently my project is ONLY FOR CENTOS 7+

When i finished this for CentOS 7+, i implement it for debian like systems too.

For the individual role readme please go to the role folder

Next roles:
```
# Base configurations:
 - managed_firewall
 - managed_repos
 - managed_cron
 - managed_kernel_params
 - managed_logrotate
 - managed_rsyslog
 - managed_auditbeat
 - managed_filebeat
 - managed_metricbeat
 - managed_mounts
 - managed_downloads
 - managed_sysctl
 - managed_security_limits
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
  - logstast
  - elasticsearch
  - kibana
- mail
  - postfix
  - dovecot
  - opendkim
  - opendmarc
  - rspamd
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
- fail2ban
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
