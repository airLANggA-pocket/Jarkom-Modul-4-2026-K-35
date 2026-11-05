auto eth0
iface eth0 inet static
    address 10.81.22.110
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.81.22.62
    netmask 255.255.255.192

up ip route add default via 10.81.22.109