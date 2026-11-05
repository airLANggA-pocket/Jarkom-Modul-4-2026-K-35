auto eth0
iface eth0 inet dhcp
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.81.24.126
    netmask 255.255.255.128

auto eth2
iface eth2 inet static
    address 10.81.24.137
    netmask 255.255.255.252

# Routing CIDR Summary ke seluruh jaringan bawah
up ip route add 10.81.0.0/20 via 10.81.24.138
up ip route add 10.81.16.0/21 via 10.81.24.138
up iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE