### CHANGE SSH PASSWORD AND ANSIBLE DISABLE SSHD PASSWORD AUTHENTICATION AFTER CREATING THE DEPLOYUSER

# My role concept

In my infrastructure i use the following roles as categories

| prefix        | utilization                        | example           |
| ------------- |:----------------------------------:| -----------------:|
| managed_      | base configuration for all servers | see the names     |
| app_          | single applications                | jdownloader       |
| bundle_       | multiple apps (webserver)          | web-/mailserver   |

By default, all my roles are included in the default_server.yml. You can disable the by comment out the line or set for specific hosts the following (example) to disable this.
```yaml
managed_hosts:
  enabled: false
```
If enabled: false is set. The role is disabled. On all tasks inside the role, there is a check as when for this parameter.

You can read the README for every role in this folder.

State:
* Ubuntu 18.04 LTS up2date
* CentOS 7.6 last edit at 18.01.2019


For the following tasks, i use the default Ansible modules:
* [Cron with Ansible](https://docs.ansible.com/ansible/latest/modules/cron_module.html)
* [Yum Repos with Ansible](https://docs.ansible.com/ansible/latest/modules/yum_repository_module.html)
* [Mounts with Ansible](https://docs.ansible.com/ansible/latest/modules/mount_module.html)
* [Downloads with Ansible](https://docs.ansible.com/ansible/latest/modules/get_url_module.html)
* [Limits with Ansible](https://docs.ansible.com/ansible/latest/modules/pam_limits_module.html)
* [Modprobe with Ansible](https://docs.ansible.com/ansible/latest/modules/modprobe_module.html)
* [Kernel Blacklist with Ansible](https://docs.ansible.com/ansible/latest/modules/kernel_blacklist_module.html)
