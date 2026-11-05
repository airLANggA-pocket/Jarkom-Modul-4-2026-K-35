auto eth0
iface eth0 inet static
    address 10.81.18.66
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.81.16.254
    netmask 255.255.255.0

auto eth2
iface eth2 inet static
    address 10.81.18.62
    netmask 255.255.255.192

auto eth3
iface eth3 inet static
    address 10.81.17.254
    netmask 255.255.255.0

up ip route add default via 10.81.18.65