# Managed Resolv.conf

Ansible Role zur Verwaltung der /etc/resolv.conf

Default Variables
```yaml
managed_resolvconf_enabled: true
managed_resolvconf_nameservers:
  - 1.0.0.1
  - 2606:4700:4700::1001
  - 1.1.1.1
  - 2606:4700:4700::1111
managed_resolvconf_domain: "{{ ansible_domain }}"
managed_resolvconf_search: "{{ ansible_domain }}"
managed_resolvconf_sortlist: []
managed_resolvconf_options:
  - timeout:2
  - rotate
```
