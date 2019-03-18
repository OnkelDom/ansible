# Add IPv6 for you DHCP from KVM

```yaml
sudo dnf install fence-agents-virsh

sudo virsh net-destroy default
sudo virsh net-edit default

<network>
  # other configuration here
  <ip address='192.168.122.1' netmask='255.255.255.0'>
    <dhcp>
      <range start='192.168.122.2' end='192.168.122.254'/>
    </dhcp>
  </ip>
  <ip family='ipv6' address='fe80:10ad:1337::' prefix='64'>
    <dhcp>
      <range start='fe80:10ad:1337::10' end='fe80:10ad:1337::ffff'/>
    </dhcp>
  </ip>
</network>

echo "net.ipv6.conf.enp4s0.accept_ra = 2" >> /etc/sysctl.conf
sudo /sbin/sysctl -p

sudo virsh net-start default
```
