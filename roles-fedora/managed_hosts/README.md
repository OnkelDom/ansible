# Managed Hosts

Ansible Role to manage your /etc/hosts

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_hosts:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

By default, ipv6, aliases and custom entrys are empty

Example Playbook #1
```yaml
- name: "configure /etc/hosts"
  hosts: all
  roles:
    - role: "managed_hosts"
      managed_hosts:
        enabled: true
        backup: false # backup original file
        hostname: "{{ ansible_hostname }}"
        domain: "{{ ansible_domain }}"
        ipv4: "{{ ansible_default_ipv4.address  }}"
        #ipv6: "{{ ansible_default_ipv6.address }}"
        alias: []
        #  entrys:
        #    - hostname: dc
        #      ip: 192.168.178.20
        #      domain: "{{ ansible_domain }}"
        #      comment: "Say what it is"
        #      alias: ['adc', 'idc']
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_hosts
```
