# Managed Services

Ansible Role zur Verwaltung von Diensten.

Default Variables
```yaml
managed_services_enabled: true
managed_services_active:
  - chronyd
  - sshd
  - fail2ban
  - NetworkManager
  - ufw
managed_services_disabled:
  - firewalld
```
