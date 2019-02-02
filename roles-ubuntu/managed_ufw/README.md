# Managed Firewall

Ansible Role to manage firewalld

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_firewall:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

You can configure firewall rules with services and ports.

By default ssh is allowed for zone public and permanent.

Example Playbook #1
```yaml
- name: "configure firewall"
  hosts: all
  roles:
    - role: "managed_firewall"
      managed_firewall:
        enabled: true
        services:
        - name: ssh
          zone: public
          permanent: true
          state: enabled
        ports: [{}]
        #- name: plex
        #  port: 32400/tcp
        #  zone: public
        #  permanent: True
        #  state: enabled
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_firewall
```
