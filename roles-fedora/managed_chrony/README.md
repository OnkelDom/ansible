# Managed Chrony

Ansible Role zur Verwaltung des Chrony Services.

Default Variables
```yaml
managed_chrony_enabled: true
managed_chrony_client:
  driftfile: /var/lib/chrony/drift
  logdir: /var/log/chrony
  makestep: '1.0 3'
  rtcsync: true
  server:
  - 0.centos.pool.ntp.org iburst
  - 1.centos.pool.ntp.org iburst
  - 2.centos.pool.ntp.org iburst
  - 3.centos.pool.ntp.org iburst
managed_chrony_server:
  allow: []
managed_chrony_sysconfig: ''
```
