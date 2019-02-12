# Managed UFW

Ansible role to manage basic firewall settings for all servers.

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_ufw:
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
    - role: "managed_ufw"
      managed_ufw:
        enabled: true
```
