# Managed Resolv.conf

Ansible Role to manage your resolv.conf

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_resolvconf:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

Example Playbook #1
```yaml
- name: "configure /etc/resolv.conf"
  hosts: all
  roles:
    - role: "managed_resolvconf"
      managed_resolvconf:
        enabled: true
        nameservers:
        - 1.0.0.1
        - 2606:4700:4700::1001
        - 1.1.1.1
        - 2606:4700:4700::1111
        domain: "{{ ansible_domain }}"
        search: "{{ ansible_domain }}"
        sortlist: []
        options:
        - timeout:2
        - rotate
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_resolvconf
```
