# Managed UFW

Ansible Role zur Verwaltung der Firewall mittels UFW.

Die Firewall Regeln fuer Applikationen sind in den Rollen der Applikationen in den Files hinterlegt und werden mit dieser auch bereitgestellt. Hier wird nur die absolute default Konfigurationen fuer alle Server vorgenommen.

Default Variables
```yaml
managed_ufw_enabled: true
```
