# Managed Motd

Ansible Role to manage your motd.

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_motd:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

![alt text](https://github.com/OnkelDom/ansible/roles/managed/motd/motd.png "managed_motd_example")

Example Playbook #1
```yaml
- name: "configure /etc/motd"
  hosts: all
  roles:
    - role: "managed_motd"
      managed_motd:
        enabled: true
        # Default ASCII art shown at the beginning of the motd
        motd_ascii_art: "     _              _ _     _\n    / \\   _ __  ___(_) |__ | | ___\n   / _ \\ | '_ \\/ __| | '_ \\| |/ _ \\\n  / ___ \\| | | \\__ \\ | |_) | |  __/\n /_/   \\_\\_| |_|___/_|_.__/|_|\\___|\n"
        # Default information to show under the ASCII art
        motd_info:
          - " FQDN:    ": "{{ ansible_fqdn }}"
          - " Distro:  ": "{{ ansible_distribution }} {{ ansible_distribution_version }} {{ ansible_distribution_release }}"
          - " Virtual: ": "{{ 'Yes' if ansible_virtualization_role == 'guest' else 'No' }}"
          - " CPUs:    ": "{{ ansible_processor_vcpus }}"
          - " RAM:     ": "{{ (ansible_memtotal_mb / 1000) | round(1) }}GB"
          # My Testserver has no IPv6. You can enable it if you have them.
          #- " IPv6:    ": "{{ ansible_default_ipv6.address }}"
          - " IPv4:    ": "{{ ansible_default_ipv4.address }}\n"
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_motd
```
