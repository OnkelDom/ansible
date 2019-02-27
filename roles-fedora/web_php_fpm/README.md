# Web PHP-FPM

Ansible Role zur Verwaltung von PHP-FPM.

Default Variables
```yaml
infra_php_fpm_enabled: true
infra_php_fpm_config:
  listen: 127.0.0.1:9000
  listen.allowed_clients: 127.0.0.1
  user: caddy
  group: caddy
  pm: dynamic
  pm.max_children: 50
  pm.start_servers: 5
  pm.min_spare_servers: 5
  pm.max_spare_servers: 35
  pm.max_requests: 500
  pm.status_path: /status
```
