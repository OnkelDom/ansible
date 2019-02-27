# Meine Ansible Landschaft

Bis vor kurzem habe ich alle meine Server mit Shell-Scripten und teils git administriert. Da aber aufgrund der vielzahl an Servern und masse an Applikationen das ganze doch sehr viel Zeit in Anspruch nimmt, habe ich mich fuer Ansible entschieden.

Mit dem Hintergrund das mir die Community dabei viel geholfen hat, gebe ich meine Art der Umsetzung von Ansible fuer alle zur freien Verfuegung.

Ich habe meine Landschaft in 3 Kategorien eingeteilt:
* managed_ = Grundlegende Serverkonfiguration die ich zusammen "standard_server" nenne.
* app_     = Einzelne Applikationen (z.B. Plex)

Ich hatte mich zuerst an CentOS versucht. Da mer aber die meisten Pakete zu alt sind, bin ich erst auf Ubuntu und dann doch letzendlich bei Fedora gelandet. Da ich aber die schon geleistete Arbeit nicht wegwerfen wollte, habe ich "erstmal" neue Rollenordner dafuer angelegt. Irgendwann werde ich die Rolen zusammenfuehren.

Irgendwann ist es mein Ziel rede Rolle fuer Debian, Ubuntu, CentOS und Fedora nutzbar zu haben.

Genutzte Distros:
* Ubuntu 18.04 LTS
* CentOS 7.6
* Fedora Workstation 29

Damit jeder verstehen kann, wie meine Rollen funktionieren, habe ich zu jeder Rolle eine eigene README-Datei geschrieben.

Fuer folgende Rollen nutze ich die Standard Ansible Module:
* [Cron with Ansible](https://docs.ansible.com/ansible/latest/modules/cron_module.html)
* [Yum Repos with Ansible](https://docs.ansible.com/ansible/latest/modules/yum_repository_module.html)
* [Mounts with Ansible](https://docs.ansible.com/ansible/latest/modules/mount_module.html)
* [Downloads with Ansible](https://docs.ansible.com/ansible/latest/modules/get_url_module.html)
* [Limits with Ansible](https://docs.ansible.com/ansible/latest/modules/pam_limits_module.html)
* [Modprobe with Ansible](https://docs.ansible.com/ansible/latest/modules/modprobe_module.html)
* [Kernel Blacklist with Ansible](https://docs.ansible.com/ansible/latest/modules/kernel_blacklist_module.html)

```yaml
## Webservices
- web_lighthttpd
- web_caddy
- web_nextcloud
- web_jekyll https://jekyllrb.com/ and git
## Media Management
- media_plex
- media_tautulli
- media_sonarr
- media_jdownloader2
- media_filebot
- media_converter (movies, series to mp4)
- media_rclone
## Proxys
- proxy__squid
- proxy__haproxy
- proxy__keepalived (for app_haproxy or single use)
## Mail
- mail_postfix
- mail_dovecot
- mail_opendkim
- mail_opendmarc
- mail_rspamd
- mail_clamav
## DNS
- dns_bind
- dns_unbound
- dns_powerdns
- dns_dnsmasq
  - cache
  - resolver
  - dhcp
  - pxe
  - tftp
## Logging
- log_logstash
- log_elasticsearch
- log_kibana
- managed_logrotate    # feature work for more complexed logs and items
- managed_rsyslog      # feature work for ssl support and encrypted transfers
- managed_auditbeat    # feature work for full elk stack
- managed_journalbeat  # feature work for full elk stack
- managed_filebeat     # feature work for full elk stack
- managed_metricbeat   # feature work for full elk stack
## Monitoring
- mon_grafana https://github.com/shelleg/ansible-role-grafana
- mon_zabbix_web
- mon_zabbix_server
- mon_zabbix_proxy
- mon_zabbix_java-gateway
## Security
- sec_openvpn
- sec_openssh_ca
- sec_oauth2
## LDAP
- ldap_slapd
- ldap_openldap
- ldap_ldapadmin https://github.com/shelleg/ansible-role-php-ldapadmin
- ldap_samba5dc
## Databases
- db_mysql https://github.com/shelleg/ansible-role-mysql
- db_postgresql
- db_mongodb
## Productivity & Communication
- com_gitlab
- com_jenkins https://github.com/shelleg/ansible-role-jenkins
- com_jira https://github.com/shelleg/ansible-role-jira https://github.com/shelleg/ansible-playbook-jira
- com_confluence
- com_slack
- com_telegramm
## Others
- files_nfs https://github.com/shelleg/ansible-role-nfs
```
