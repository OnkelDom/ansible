# Managed Services

Ansible Role to manage your active and disabled services.

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_services:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

For my case i use this to disable the NetworkManager and enable chrony on all my centos 7 nodes.

Example Playbook #1
```yaml
- name: "enable and disable services"
  hosts: all
  roles:
    - role: "managed_services"
      managed_services:
        enabled: true
        active:
          - chronyd
        disabled:
          - NetworkManager
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_services
```
