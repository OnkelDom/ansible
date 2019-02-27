# Managed Admin

Ansible Role zur Verwaltung der Adminuser, deren Authorized Keys und Powerline.

Default Variables
```yaml
managed_admin_enabled: true
managed_admin_users:
  - user: onkeldom
    fullname: "Dominik Lenhardt"
    key: "{{ lookup('file', '~/.ssh/id_rsa.pub') }}"
    state: present
  - user: testuser
    fullname: "Testuser"
    key: "{{ lookup('file', '~/.ssh/id_rsa_test.pub') }}"
    state: present
```
