Variables working tree:
1. role/defaults
2. role/vars
3. group_vars/{<hosrgroup>,all}


Mediaserver:
- app_rclone
 - fuse
 - fuse config
 - rclone connection
 - rclone cache
 - rclone crypt
 - rclone http
 - service

- app_filebot
 - filebot
 - java

- app_jdownloader
 - jdownloader
 - java
 - service

- app_2mp4
 - ffmpeg
 - ffprobe
 - HandBrake
 - 2mp4

- app_caddy
 - caddy default config
 - service /etc/systemd/system/caddy.d/override.conf
 - include custom_conf/*
 - service

- app_plex
 - config
 - caddy config /etc/caddy/custom_conf/plex.conf
 - service /etc/systemd/system/plexmediaserver.d/override.conf
 - req: caddy, rclone

- app_sonarr
 - config
 - caddy config /etc/caddy/custom_conf/sonarr.conf
 - service /etc/systemd/system/sonarr.service
 - req: caddy, rclone

- app_tautulli
 - config
 - caddy config /etc/caddy/custom_conf/tautulli.conf
 - service /etc/systemd/system/tautulli.service
 - req: caddy, rclone
