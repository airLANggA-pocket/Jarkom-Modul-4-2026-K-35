auto eth0
iface eth0 inet static
    address 10.81.24.132
    netmask 255.255.255.248
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.81.12.6
    netmask 255.255.255.248

auto eth2
iface eth2 inet static
    address 10.81.12.9
    netmask 255.255.255.252

up ip route add 10.81.8.0/22 via 10.81.12.10
up ip route add default via 10.81.24.129