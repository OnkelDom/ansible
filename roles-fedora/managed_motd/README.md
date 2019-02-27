# Managed Motd

Ansible Role zur Verwaltung der Motd.

Default Variables
```yaml
managed_motd_enabled: true
  # Default ASCII art shown at the beginning of the motd
managed_motd_ascii_art: "     _              _ _     _\n    / \\   _ __  ___(_) |__ | | ___\n   / _ \\ | '_ \\/ __| | '_ \\| |/ _ \\\n  / ___ \\| | | \\__ \\ | |_) | |  __/\n /_/   \\_\\_| |_|___/_|_.__/|_|\\___|\n"
  # Default information to show under the ASCII art
managed_motd_info:
  FQDN: "   {{ ansible_fqdn }}"
  Distro: " {{ ansible_distribution }} {{ ansible_distribution_version }} {{ ansible_distribution_release }}"
  Virtual: "{{ 'Yes' if ansible_virtualization_role == 'guest' else 'No' }}"
  CPUs: "   {{ ansible_processor_vcpus }}"
  RAM: "    {{ (ansible_memtotal_mb / 1000) | round(1) }}GB"
  IPv4: "   {{ ansible_default_ipv4.address }}"
  IPv6: "   {{ ansible_default_ipv6.address }}\n"
```
