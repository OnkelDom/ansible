# Media JDownloader2 Headless

Ansible Role zur Verwaltung des JDownloader2 Services.

Default Variables
```yaml
media_j2_enabled: true
media_j2_installdir: "/usr/local/lib/jdownloader"
media_j2_service_user: "{{ media_user }}"
media_j2_service_group: "{{ media_user }}"
# org.jdownloader.api.myjdownloader.MyJDownloaderSettings.json
media_jd2_myjdownloader_email: "{{ lookup('file', '~/git/.secure/jd2_mail') }}"
media_jd2_myjdownloader_password: "{{ lookup('file', '~/git/.secure/jd2_password') }}"
media_jd2_myjdownloader_servername: "{{ ansible_hostname }}"
# org.jdownloader.settings.GeneralSettings.json
media_j2_defaultdownloadfolder: "/opt/download/<jd:packagename>"
media_j2_downloadspeedlimit: 31457280
media_j2_maxsimultanedownloads: 15
# org.jdownloader.extensions.extraction.ExtractionExtension.json
media_j2_exctraction_enabled: true
media_j2_subpath: "%PACKAGENAME%"
media_j2_deleteinfofilesafterextraction: true
media_j2_deletearchivedownloadlinksafterextraction: true
media_j2_deletearchivefilesafterextractionaction: "NULL"
```
