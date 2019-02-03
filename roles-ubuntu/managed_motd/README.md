# Managed Motd

Ansible Role to manage your motd.

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_motd:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

Disable the ubuntu news from motd. Installs landscape and update-notifier

Example Playbook #1
```yaml
- name: "configure /etc/motd"
  hosts: all
  roles:
    - role: "managed_motd"
      managed_motd:
        enabled: true
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_motd
```
