# Managed Ansibleuser

Ansible Role zur Verwaltung des Ansible Deployusers/Serviceaccounts.

Default Variables
```yaml
managed_ansibleuser_enabled: true
managed_ansibleuser_comment: "Ansible User"
managed_ansibleuser_name: svc_ansible
# Create a new Password with 'mkpasswd --method=sha-512'
# This password is 'svc_ansible'
# You need it only for the first login. After execute the ssh role. Keyauth is disabled
managed_ansibleuser_pass: $6$OatyNYrvqltaoSfe$rcHhMgcb3cgdrGD9tJ.14pNC///3kPBnwZ5DPmeGrc0n1uFk3nGZm3eTdW7xx9j47QEj3KPJp5Di5.Ai6bg6n0
# Create a new SSH-Key with 'ssh-keygen -f id_rsa_ansible -b 2048 -t rsa -q'
managed_ansibleuser_key: "{{ lookup('file', '~/.ssh/id_rsa_ansible.pub') }}"
```
