# Managed Hosts

Ansible Role zur Verwaltung von /etc/hosts

Default Variables
```yaml
managed_hosts_enabled: true
managed_hosts_backup: false
managed_hosts_hostname: "{{ ansible_hostname }}"
managed_hosts_domain: "{{ ansible_domain }}"
managed_hosts_ipv4: "{{ ansible_default_ipv4.address  }}"
managed_hosts_ipv6: "{{ ansible_default_ipv6.address }}"
managed_hosts_alias: []
#managed_hosts_entrys:
#  - hostname: dc
#    ip: 192.168.178.20
#    domain: onkeldom.local
#    comment: "TEST DING"
#    alias: ['adc', 'idc']
```
