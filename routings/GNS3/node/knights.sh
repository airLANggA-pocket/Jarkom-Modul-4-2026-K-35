auto eth0
iface eth0 inet static
    address 10.81.22.206
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.81.22.102
    netmask 255.255.255.248

auto eth2
iface eth2 inet static
    address 10.81.22.105
    netmask 255.255.255.252

# Routing CIDR Summary
up ip route add 10.81.22.64/26 via 10.81.22.106
up ip route add 10.81.22.0/26 via 10.81.22.106
up ip route add default via 10.81.22.205