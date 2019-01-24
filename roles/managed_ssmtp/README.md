# Managed SSMTP

Ansible Role to manage your ssmtp deamon

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_ssmtp:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.


Example Playbook #1
```yaml
- name: "configure ssmtp service"
  hosts: all
  roles:
    - role: "managed_ssmtp"
      managed_ssmtp:
        enabled: true
        Debug: NO
        root: admin@{{ ansible_domain }}
        mailhub: mail.{{ ansible_domain }}:465
        # rewriteDomain: [a different domain here, if needed ]
        hostname: {{ ansible_fqdn }}
        FromLineOverride: NO
        AuthUser: systemmails
        AuthPass: systemmails
        UseTLS: YES
        UseTLSCert: NO
        TLSCert: /etc/ssl/certs/ssmtp.pem
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_ssmtp
```
