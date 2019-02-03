# Managed Packages

Ansible Role to manage your installed software

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_packages:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

You can install or remove packages. If the package are installed or removed, the role ignores errors.

Example Playbook #1
```yaml
- name: "configure installed software"
  hosts: all
  roles:
    - role: "managed_packages"
      managed_packages:
        enabled: true
        install:
          - python
          - vim
          - htop
          - tmux
          - wget
          - zsh
          - bash-completion
        remove:
          - not-named
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_packages
```
