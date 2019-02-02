# Managed Logical Volumes

Ansible Role to Manage LV's

You can look at the default file. In this i enable the role by default. You can set
```yaml
managed_lvm:
  enabled: false
```
to quick disable these role without comment it out. Otherwise you can define you defaults in defaults/main.yml.

Example Playbook
```yaml
- name: "configure lvm"
  hosts:
  - web01
  - web02
  roles:
    - role: "managed_lvm"
      managed_lvm:
        enabled: true
        vgs:
          - name: "content-group"
            vg: "content"
            pvs:
            - "/dev/sdb"
          - name: "backup-group"
            vg: "backup"
            pvs:
            - "/dev/sdc"
            - "/dev/sdd"
        lvs:
          - name: "Content Data"
            vg: "content"
            lv: "data"
            size: "25g"
            mount: "/data"
            mount_owner: "root"
            mount_group: "root"
            mount_mode: "0755"
            mount_dump: "1"
            mount_passno: "2"
            mount_opts: "defaults"
            fstype: "xfs"
          - name: "Backup WWW"
            vg: "backup"
            lv: "www"
            size: "15g"
            mount: "/backup/www"
            mount_owner: "root"
            mount_group: "root"
            mount_mode: "0755"
            mount_dump: "1"
            mount_passno: "2"
            mount_opts: "defaults"
            fstype: "xfs"
          - name: "Backup MySQL"
            vg: "backup"
            lv: "sql"
            size: "15g"
            mount: "/backup/mysql"
            mount_owner: "root"
            mount_group: "root"
            mount_mode: "0755"
            mount_dump: "1"
            mount_passno: "2"
            mount_opts: "defaults"
            fstype: "xfs"
```

Example Playbook #2
```yaml
- hosts: all
  roles:
  # Paramters defined in defaults/main.yml
  - managed_lvm
```
