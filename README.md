# Meine Ansible Landschaft

Bis vor kurzem habe ich alle meine Server mit Shell-Scripten und teils git administriert. Da aber aufgrund der vielzahl an Servern und masse an Applikationen das ganze doch sehr viel Zeit in Anspruch nimmt, habe ich mich fuer Ansible entschieden.

Mit dem Hintergrund das mir die Community dabei viel geholfen hat, gebe ich meine Art der Umsetzung von Ansible fuer alle zur freien Verfuegung.

Ich habe meine Landschaft in 3 Kategorien eingeteilt:
* managed_ = Grundlegende Serverkonfiguration die ich zusammen "standard_server" nenne.
* app_     = Einzelne Applikationen (z.B. Plex)
* bundle_  = Mehrerer zussamenlaufende Applikationen (z.B. Webserver incl. caddy,php-fpm,nextcloud,mariadb usw)

Ich hatte mich zuerst an CentOS versucht. Da hier aber die meisten Pakete zu alt sind, bin ich mitlerweile auf Ubuntu umgestiegen. Da ich aber die schon geleistete Arbeit nicht wegwerfen wollte, habe "erstmal" ywei Ordner gemacht. Irgendwann werde ich die Rolen zusammenfuehren.

State:
* Ubuntu 18.04 LTS up2date
* CentOS 7.6 last edit at 18.01.2019

Damit jeder verstehen kann, wie meine Rollen funktionieren, habe ich zu jeder Rolle eine eigene README-Datei geschrieben.

Fuer folgende Rollen nutze ich die Standard Ansible Module:
* [Cron with Ansible](https://docs.ansible.com/ansible/latest/modules/cron_module.html)
* [Yum Repos with Ansible](https://docs.ansible.com/ansible/latest/modules/yum_repository_module.html)
* [Mounts with Ansible](https://docs.ansible.com/ansible/latest/modules/mount_module.html)
* [Downloads with Ansible](https://docs.ansible.com/ansible/latest/modules/get_url_module.html)
* [Limits with Ansible](https://docs.ansible.com/ansible/latest/modules/pam_limits_module.html)
* [Modprobe with Ansible](https://docs.ansible.com/ansible/latest/modules/modprobe_module.html)
* [Kernel Blacklist with Ansible](https://docs.ansible.com/ansible/latest/modules/kernel_blacklist_module.html)

Folgende Rollen (stand 02.02.2019) erstelle ich noch:
```yaml
# My Infra - basics:
  - managed_logrotate  # feature work for more complexed logs and items
  - managed_rsyslog    # feature work for ssl support and encrypted transfers
  - managed_auditbeat  # feature work for full elk stack
  - managed_filebeat   # feature work for full elk stack
  - managed_metricbeat # feature work for full elk stack
  - managed_webcontent # Build Website with Jekyll https://jekyllrb.com/ and git
# My Infra - bundles:
  - bundle_webserver   # caddy, php, php-fpm, mariadb, nextcloud
  - bundle_mediaserver # rclone, plexdrive, plex, sonarr
  - bundle_mailserver  # postfix, dovecot, opendkim, opendmarc, rspamd, clamav
  - bundle_mgmt        # dnsmasq (dns,dhcp,pxe,tftp), lighthttpd, samba5dc, git-server
  - bundle_auth        # openldap, slapd, oauth2
  - bundle_lb          # keepalived, haproxy, squid, ntp
  - bundle_ns          # bind, unbound or/and powerdns
  - bundle_syslog      # elastic, logstash, kibana, zabbix, grafana
# My Infra - applications
  - app_jdownloader2
  
# Interessts:
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
