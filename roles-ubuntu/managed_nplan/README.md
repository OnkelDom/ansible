# Managed NPlan

Ansible Role to manage your network settings with netplan

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_nplan:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

This role defines /etc/netplan/01-netplan.yaml. i have wrote a role for the first useable interface without need configurations.

Example Playbook #1
```yaml
- name: "configure network with netplan"
  hosts: all
  roles:
    - role: "managed_nplan"
      managed_nplan:
        enabled: true
        config:
          file: 01-network.yaml
        network:
          version: 2
          renderer: networkd
          ethernets:
            eth0:
              match:
                macaddress: "{{ ansible_default_ipv4.macaddress }}"
              addresses:
              - "{{ ansible_default_ipv4.address }}/{{ (ansible_default_ipv4.address + '/' + ansible_default_ipv4.netmask) | ipaddr('prefix') }}"
              - "{{ ansible_default_ipv6.address }}/{{ ansible_default_ipv6.prefix }}"
              gateway4: "{{ ansible_default_ipv4.gateway }}"
              gateway6: fe80::1
              nameservers:
                search: [ invalid ]
                addresses:
                - 1.0.0.1
                - 1.1.1.1
                - 2606:4700:4700::1111
                - 2606:4700:4700::1001
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_nplan
```
