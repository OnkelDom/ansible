# My role concept

In my infrastructure i use the following roles as categories

| prefix        | utilization                        | example           |
| ------------- |:----------------------------------:| -----------------:|
| managed_      | base configuration for all servers | see the names     |
| infra_        | infrastructure applikations        | dns,nginx,mail,.. |
| os_           | operating system specific          | updates           |

By default, all my roles are included in the default_server.yml. You can disable the by comment out the line or set for specific hosts the following (example) to disable this.
```yaml
managed_hosts:
  enabled: false
```
If the enabled: false is set. The role is disabled. On alle the tasks inside the role, there is a check as when for this paramter.

You can read the README for every role in this folder.
