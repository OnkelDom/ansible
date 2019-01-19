# Managed Chrony

Ansible Role to manage NTP with chrony

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_chrony:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

You can define any paramter for the chrony config. I use an default template without hardcoded params.

Example Playbook #1
```yaml
- name: "install & configure chrony"
  hosts: all
  roles:
    - role: "managed_chrony"
    managed_chrony:
      enabled: true
      client:
        driftfile: /var/lib/chrony/drift
        logdir: /var/log/chrony
        makestep: '1.0 3'
        rtcsync: true
        server:
        - 0.centos.pool.ntp.org iburst
        - 1.centos.pool.ntp.org iburst
        - 2.centos.pool.ntp.org iburst
        - 3.centos.pool.ntp.org iburst
      # if defined, chrony works as ntp server
      # server:  
      #  allow: []
      # define sysconfig params
      sysconfig: ''
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_chrony
```

If you want to use chrony as ntp server, you can configure the firewall rules.
```yaml
- hosts:
  - ntp01
  - ntp02
  roles:
  - role: "managed_chrony"
    managed_chrony:
      enabled: true
      client:
        driftfile: /var/lib/chrony/drift
        logdir: /var/log/chrony
        makestep: '1.0 3'
        rtcsync: true
        server:
        - 0.centos.pool.ntp.org iburst
        - 1.centos.pool.ntp.org iburst
        - 2.centos.pool.ntp.org iburst
        - 3.centos.pool.ntp.org iburst
      server:  
        allow:
        - 192.168.0.0/24
  - role: "managed_firewall"
    managed_firewall:
      enabled: true
      services:
      - name: ntp
        zone: public
        permanent: true
        state: enabled
```
