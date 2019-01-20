# Managed fail2ban

Ansible Role to manage fail2ban

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_fail2ban:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

Set fail2ban services

Example Playbook #1
```yaml
- name: "configure fail2ban"
  hosts: all
  roles:
    - role: "managed_failban"
      managed_failban:
        enabled: true
        services:
        - ssh
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_fail2ban
  ```
