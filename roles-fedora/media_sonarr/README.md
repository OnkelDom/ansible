# Media Sonarr

Ansible Role zur Verwaltung von Sonarr.

Default Variables
```yaml
media_sonarr_enabled: true
media_sonarr_port: 8989
media_sonarr_address: "127.0.0.1"
media_sonarr_service_user: "{{ media_user }}"
media_sonarr_service_group: "{{ media_group }}"
media_sonarr_installdir: "/usr/local/lib/sonarr"
media_sonarr_use_firewall: false
media_sonarr_url: "http://download.sonarr.tv/v2/master/mono/NzbDrone.master.tar.gz"
media_sonarr_loglevel: "Info"
media_sonarr_sslport: 9898
media_sonarr_enablessl: "False"
media_sonarr_sslcerthash: ""
media_sonarr_basepath: "/sonarr/"
media_sonarr_authmethod: "Forms"
media_sonarr_branch: "master"
media_sonarr_launchbrowser: "True"
media_sonarr_updatemechanism: "BuiltIn"
media_sonarr_autoupdate: "True"
```
