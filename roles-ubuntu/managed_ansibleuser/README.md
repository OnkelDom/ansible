# Managed Ansibleuser

Ansible Role to manage configure sudo without password and create a deployuser with public key.

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_deployuser:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

Creeate password has with:
```
mkpasswd --method=sha-512
```

Create silent a ssh-key:
```
ssh-keygen -f id_rsa_deployuser -b 2048 -t rsa -q
```

Example Playbook #1
```yaml
- name: "configure deployuser"
  hosts: all
  roles:
    - role: "managed_deployuser"
      managed_deployuser:
        enabled: true
        comment: Ansible User
        # adeployer:adeployer
        name: adeployer
        pass: $6$zsoMDZneqQ.5qlCz$9ST.28ywuNKUFcOqTQiOa..QzHV2wDHvsAd9f1G2kb/kQIPyVzP5WoGkfb6PaY4pi5YOojQOXU0IURCu5MTfj0
        key: "{{ lookup('file', '~/.ssh/id_rsa_deployuser.pub') }}"

```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_hosts
```
