# Managed fail2ban

Ansible Role to manage fail2ban

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_fail2ban:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

Set and configure fail2ban services

Example Playbook #1
```yaml
- name: "configure fail2ban"
  hosts: all
  roles:
    - role: "managed_failban"
      managed_failban:
        enabled: true
        config:
        loglevel: "WARNING"
        logtarget: /var/log/fail2ban.log
        syslogsocket: auto
        syslog_target: /var/log/fail2ban.log
        syslog_facility: 1
        socket: /var/run/fail2ban/fail2ban.sock
        pidfile: /var/run/fail2ban/fail2ban.pid
        dbfile: /var/lib/fail2ban/fail2ban.sqlite3
        dbpurgeage: 86400
      jail_config:
        ignoreip: 127.0.0.0/8,192.168.0.0/14
        findtime: 600
        maxretry: 3
        bantime: 600
        backend: auto
        usedns: warn
        logencoding: auto
        enabled: "true"
        filter: "%(__name__)s"
        mta: sendmail
        destmail: "root@{{ ansible_domain }}"
        sender: "root@{{ ansible_domain }}"
        protocol: tcp
        chain: INPUT
        port: "0:65535"
        fail2ban_agent: "Fail2Ban/%(fail2ban_version)s"
        banaction: "iptables-multiport"
        banaction_allports: "iptables-allports"
        action_: |
          %(banaction)s[name=%(__name__)s, bantime="%(bantime)s", port="%(port)s", protocol="%(protocol)s", chain="%(chain)s"]
        action_mw: |
          %(banaction)s[name=%(__name__)s, bantime="%(bantime)s", port="%(port)s", protocol="%(protocol)s", chain="%(chain)s"]
          %(mta)s-whois[name=%(__name__)s, sender="%(sender)s", dest="%(destemail)s", protocol="%(protocol)s", chain="%(chain)s"]
        action_mwl: |
          %(banaction)s[name=%(__name__)s, bantime="%(bantime)s", port="%(port)s", protocol="%(protocol)s", chain="%(chain)s"]
          %(mta)s-whois-lines[name=%(__name__)s, sender="%(sender)s", dest="%(destemail)s", logpath=%(logpath)s, chain="%(chain)s"]
        action_xarf: |
          %(banaction)s[name=%(__name__)s, bantime="%(bantime)s", port="%(port)s", protocol="%(protocol)s", chain="%(chain)s"]
          xarf-login-attack[service=%(__name__)s, sender="%(sender)s", logpath=%(logpath)s, port="%(port)s"]
        action_cf_mwl: |
          cloudflare[cfuser="%(cfemail)s", cftoken="%(cfapikey)s"]
          %(mta)s-whois-lines[name=%(__name__)s, sender="%(sender)s", dest="%(destemail)s", logpath=%(logpath)s, chain="%(chain)s"]
        action_blocklist_de: |
          blocklist_de[email="%(sender)s", service=%(filter)s, apikey="%(blocklist_de_apikey)s", agent="%(fail2ban_agent)s"]
        action_badips: |
          badips.py[category="%(__name__)s", banaction="%(banaction)s", agent="%(fail2ban_agent)s"]
        action_badips_report: |
          badips[category="%(__name__)s", agent="%(fail2ban_agent)s"]
        action: '%(action_)s'
      jail_services:
        sshd: |
          port      = ssh
          logpath   = %(sshd_log)s
          backend   = %(sshd_backend)s
        sshd-ddos: |
          port      = ssh
          logpath   = %(sshd_log)s
          backend   = %(sshd_backend)s
        selinux-ssh: |
          port      = ssh
          logpath   = %(auditd_log)s
        sendmail-auth: |
          port      = submission,465,smtp
          logpath   = %(syslog_mail)s
          backend   = %(syslog_backend)s
        sendmail-reject: |
          port      = smtp,465,submission
          logpath   = %(syslog_mail)s
          backend   = %(syslog_backend)s
        pam-generic: |
          banaction = %(banaction_allports)s
          logpath   = %(syslog_authpriv)s
          backend   = %(syslog_backend)s
        xinetd-fail: |
          banaction = iptables-multiport-log
          logpath   = %(syslog_daemon)s
          backend   = %(syslog_backend)s
          maxretry  = 2
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_fail2ban
  ```