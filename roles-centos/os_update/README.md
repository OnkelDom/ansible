# OS Update

Ansible Role to update your servers

You can look at the default file. In this i enable the role by default. You can set
```yaml
os_update:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

Example Playbook #1
```yaml
- name: "update system packages"
  hosts: all
  roles:
    - role: "os_update"
      os_update:
        enabled: true
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - os_update
```
