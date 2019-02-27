# Web Caddy

Ansible Role zur Verwaltung von Caddy.

Default Variables
```yaml
web_caddy_enabled: true
web_caddy_baseconfig:
  import: conf.d/*.conf
web_caddy_vhosts:
  - name: localhost
    content: |
      localhost:80 {
        gzip
        root /usr/share/caddy
      }
```
