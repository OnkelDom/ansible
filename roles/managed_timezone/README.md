# Managed Timezone

Ansible Role to manage the timezone

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_timezone:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

Example Playbook #1
```yaml
- name: "configure timezone"
  hosts: Servers-Germany
  roles:
    - role: "managed_timezone"
      managed_timezone:
        enabled: true
        timezone: Europe/Berlin
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_timezone
```
