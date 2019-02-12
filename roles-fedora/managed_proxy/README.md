# Managed Proxy

Ansible Role to manage your Proxy Settings

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_proxy:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

This role defines /etc/profile.d/proxy.sh and /etc.yum.conf

Example Playbook #1
```yaml
- name: "configure systemwide proxy"
  hosts: all
  roles:
    - role: "managed_proxy"
    managed_proxy:
      enabled: true
    config:
      protocol: http
      url: "proxy.{{ ansible_domain }}"
      port: 3128
      # user: "nobody"
      # pass: "testnoby"
      noproxy: "127.0.0.0/8,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16,169.254.0.0/16,*.{{ ansible_domain }}"
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_proxy
```
