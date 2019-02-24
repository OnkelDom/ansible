#!/bin/bash
DATE=$(date +%Y-%m-%d)

# pfad sollte nicht mit "/" enden!
# Dies ist nur ein Beispiel - bitte an eigene Bedürfnisse anpassen.
# Man muß schreibberechtigt im entsprechenden Verzeichnis sein.
TMP_BACKUP_DIR="/tmp"

# Hier Verzeichnisse auflisten, die gesichert werden sollen.
# Dies ist nur ein Beispiel - bitte an eigene Bedürfnisse anpassen.
# Bei Verzeichnissen, für die der User keine durchgehenden Leserechte hat (z.B. /etc) sind Fehler vorprogrammiert.
# Pfade sollte nicht mit "/" enden!
SOURCE="$HOME/.config "

tar -cjpf $TMP_BACKUP_DIR/backup-$DATE-config.tar.bz2 $SOURCE --exclude="htop" --exclude=".mono" --exclude="NzBDrone" --exclude="plex"
sleep 3
rclone move --transfers 1 $TMP_BACKUP_DIR/backup-$DATE-config.tar.bz2 gdrive-crypt:backup/
logger -p 'syslog.info' 'BACKUP ERSTELLT: .config'

rclone -v copy /home/onkeldom/.config/plex/backup/ gdrive-crypt:backup/plexdb/

rclone -v copy /home/onkeldom/.config/NzbDrone/Backups/ gdrive-crypt:backup/sonarrdb/

find /mnt/google/media/backup/ -mtime +14 -name "*.tar.bz2" -exec  rm -f {} \;
logger -p 'syslog.info' 'BACKUP Älter 7 Tage gelöscht'
