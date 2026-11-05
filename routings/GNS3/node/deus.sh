auto eth0
iface eth0 inet static
    address 10.81.22.198
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.81.23.126
    netmask 255.255.255.128

auto eth2
iface eth2 inet static
    address 10.81.22.201
    netmask 255.255.255.252

# Routing CIDR Summary
up ip route add 10.81.22.0/24 via 10.81.22.202
up ip route add default via 10.81.22.197