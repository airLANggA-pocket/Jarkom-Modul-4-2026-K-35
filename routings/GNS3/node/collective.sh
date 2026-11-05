# collective.sh
auto eth0
iface eth0 inet static
    address 10.81.20.1
    netmask 255.255.254.0
    gateway 10.81.21.254

# ghost.sh
auto eth0
iface eth0 inet static
    address 10.81.20.2
    netmask 255.255.254.0
    gateway 10.81.21.254