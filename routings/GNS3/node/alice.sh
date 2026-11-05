# alice.sh
auto eth0
iface eth0 inet static
    address 10.81.16.1
    netmask 255.255.255.0
    gateway 10.81.16.254

# reika.sh
auto eth0
iface eth0 inet static
    address 10.81.16.2
    netmask 255.255.255.0
    gateway 10.81.16.254