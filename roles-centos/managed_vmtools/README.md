# Managed VMware Tools (open-vm-tools)

Ansible Role to manage the installation and systemd unit for open-vm-tools

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_vmtools:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

If you server/machine are not virtual, the tools where not installed.

Example Playbook #1
```yaml
- name: "install and configure open-vm-tools"
  hosts: all
  roles:
    - role: "managed_vmtools"
      managed_vmtools:
        enabled: true
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_vmtools
```
