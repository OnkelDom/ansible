# Managed NTP

Ansible Role to manage NTP

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_ntp:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

You can define any paramter for the ntp config. I use an default template without hardcoded params.

Example Playbook #1
```yaml
- name: "install & configure ntp"
  hosts: all
  roles:
    - role: "managed_ntp"
    managed_ntp:
      enabled: true
      config:
        driftfilei: /var/lib/ntp/ntp.drift
        leapfile: /usr/share/zoneinfo/leap-seconds.list
        statistics: loopstats peerstats clockstats
        # Enable this if you want statistics to be logged.
        #statsdir /var/log/ntpstats/
        filegen:
        - loopstats file loopstats type day enable
        - peerstats file peerstats type day enable
        - clockstats file clockstats type day enable
        pool:
        - 0.ubuntu.pool.ntp.org iburst
        - 1.ubuntu.pool.ntp.org iburst
        - 2.ubuntu.pool.ntp.org iburst
        - 3.ubuntu.pool.ntp.org iburst
        restrict:
        - -4 default kod notrap nomodify nopeer noquery limited
        - -6 default kod notrap nomodify nopeer noquery limited
        - 127.0.0.1
        - ::1
        - source notrap nomodify noquery
        # Clients from this (example!) subnet have unlimited access, but only if
        # cryptographically authenticated.
        #- 192.168.123.0 mask 255.255.255.0 notrust
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_ntp
```
