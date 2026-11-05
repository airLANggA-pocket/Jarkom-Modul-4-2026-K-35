auto eth0
iface eth0 inet static
    address 10.81.24.138
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.81.18.65
    netmask 255.255.255.252

auto eth2
iface eth2 inet static
    address 10.81.22.193
    netmask 255.255.255.252

auto eth3
iface eth3 inet static
    address 10.81.24.129
    netmask 255.255.255.248

# Routing CIDR Summary
up ip route add 10.81.0.0/22 via 10.81.24.130
up ip route add 10.81.4.0/22 via 10.81.24.131
up ip route add 10.81.8.0/21 via 10.81.24.132
up ip route add 10.81.16.0/22 via 10.81.18.66
up ip route add 10.81.20.0/22 via 10.81.22.194
up ip route add default via 10.81.24.137