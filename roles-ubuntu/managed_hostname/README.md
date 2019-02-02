# Managed Hostname

Ansible Role to manage your /etc/hostname

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_hostname:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

By default, it set the fact ansible_fqdn as hostname.

Example Playbook #1
```yaml
- name: "configure /etc/hostname"
  hosts: all
  roles:
    - role: "managed_hostname"
      managed_hostname:
        enabled: true
        fqdn: "{{ ansible_fqdn }}"
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_hostname
```
