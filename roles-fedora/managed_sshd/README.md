# Managed SSHD

Ansible Role zur Verwaltung der OpenSSH-Services.

Default Variables
```yaml
managed_sshd_enabled: true
managed_sshd_use_strong_rng: false
managed_sshd_client:
  ForwardX11Trusted: true
  GSSAPIAuthentication: true
  SendEnv:
  - LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES
  - LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT
  - LC_IDENTIFICATION LC_ALL LANGUAGE
  - XMODIFIERS
managed_sshd_server:
  AcceptEnv:
  - LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES
  - LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT
  - LC_IDENTIFICATION LC_ALL LANGUAGE
  - XMODIFIERS
  AddressFamily: any
  ChallengeResponseAuthentication: false
  GSSAPIAuthentication: true
  GSSAPICleanupCredentials: false
  HostKey:
  - /etc/ssh/ssh_host_rsa_key
  PasswordAuthentication: false
  PermitRootLogin: false
  Port: 22
  Protocol: 2
  Subsystem: 'sftp /usr/libexec/openssh/sftp-server'
  SyslogFacility: AUTHPRIV
  UsePAM: true
  UsePrivilegeSeparation: sandbox
  X11Forwarding: true
  PrintMotd: no
managed_sshd_autocreate_server_keys:
  - RSA
  - ECDSA
  - ED25519
```
