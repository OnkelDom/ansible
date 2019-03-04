# Media Tautulli

Ansible Role zur Verwaltung von Tautulli.

Default Variables
```yaml
media_tautulli_enabled: true
media_tautulli_port: 9123
media_tautulli_address: "127.0.0.1"
media_tautulli_domain: "localhost"
media_tautulli_service_user: "{{ media_user }}"
media_tautulli_service_group: "{{ media_group }}"
media_tautulli_password: "{{ media_tautulli_passwd }}"
media_tautulli_installdir: "/usr/local/lib/tautulli"
media_tautulli_use_reverse_proxy: true
media_tautulli_reverse_proxy_path: "tautulli"
media_tautulli_reverse_proxy_domain: "{{ media_domain }}"
media_tautulli_use_firewall: false
media_tautulli_api_key: "{{ media_tautulli_apikey }}"
media_tautulli_plexip: "{{ media_plex_ip }}"
media_tautulli_plexident: "{{ media_plex_identifier }}"
media_tautulli_plexport: "{{ media_plex_port }}"
media_tautulli_plextoken: "{{ media_plex_token }}"
media_tautulli_plexuser: "{{ media_plex_username }}"
```
