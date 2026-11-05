auto eth0
iface eth0 inet static
    address 10.81.22.194
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.81.21.254
    netmask 255.255.254.0

auto eth2
iface eth2 inet static
    address 10.81.22.197
    netmask 255.255.255.252

# Routing CIDR Summary untuk seluruh cabang ke bawah
up ip route add 10.81.22.0/23 via 10.81.22.198
up ip route add default via 10.81.22.193