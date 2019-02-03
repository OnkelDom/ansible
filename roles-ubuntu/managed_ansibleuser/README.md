# Managed Ansibleuser

Ansible Role to manage sudo without password and create a deployuser with public key.

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
ssh-keygen -f id_rsa_ansible -b 2048 -t rsa -q
```

Example Playbook #1
```yaml
- name: "configure ansible user"
  hosts: all
  roles:
    - role: "managed_ansibleuser"
      managed_ansibleuser:
        enabled: true
        comment: Ansible User
        # svc_ansible:svc_ansible
        name: svc_ansible
        pass: $6$rqSmL0GVYyM0hYq3$po557vKRt8SSEBbJa7rUrLLtgScsZefuceMlhW5HpTHoASxXOKchhpzteQ7jbiW6nHPzz7ehrHhhGCsioaioY1
        key: "{{ lookup('file', '~/.ssh/id_rsa_ansible.pub') }}"

```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_ansibleuser
```
