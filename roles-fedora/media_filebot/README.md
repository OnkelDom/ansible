# Media Filebot

Ansible Role zur Verwaltung von Filebot.

$FIXME: Opensubtitle User/Passwortd besser uebergeben. Aktuelle secure copy vom Original file.

Default Variables
```yaml
media_filebot_enabled: true
media_filebot_installdir: "/usr/local/lib/filebot"
media_filebot_filename: "FileBot_4.7.9-portable.tar"
media_filebot_bin: "/usr/local/bin/filebot"
media_filebot_opensubtitles: "{{ lookup('file', '~/git/.secure/fb_opensubtitles', convert_data=False) |string}}"
media_filebot_service_user: "{{ media_user }}"
media_filebot_service_group: "{{ media_group }}"
```
