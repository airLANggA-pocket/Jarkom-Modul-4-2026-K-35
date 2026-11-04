# Jarkom-Modul-4-2026-K-35

----
| Nama | NRP |
| ---------------------- | ---------- |
| Dea Chrisna Butarbutar | 5027251035 |
| Pradipta Airlangga Ramadhan | 5027251118 |
----

# IP Address Host : 10.4.89.247

# IP Prefix : 10.81.x.x

# Serial Experiments Lain - The Wired Expansion

## VLSM - CISCO PACKET TRACER

### Topologi
Berikut gambar topologi menggunakan metode VLSM yang sudah kami rancang di Cisco Packet Tracer.

![alt text](/images/vlsm-topologi.png)

Dari rancangan topologi tersebut, total subnet yang digunakan adalah 25 subnet dengan jumlah IP sebanyak 2864. Total ukuran blok yang dapat digunakan adalah sebanyak 4138 IP, maka dibutuhkan subnet /19 dengan total 8192 IP. 

### VLSM Tree
Berikut adalah tree yang digunakan dalam pembagian IP pada perhitungan VLSM.

![alt text](/images/vlsm-topologi.png)

### Subnetting
Hasil subnetting menggunakan metode VLSM adalah sebagai berikut.

![alt text](/images/vlsm-subnetting.jpg)

#### Perhitungan Pembagian IP

#### 1. Prefix
Perhitungan prefix dilakukan dengan menghitung kebutuhan host terlebih dahulu.
Contoh perhitungan pada **subnet A4**.

- Host = 881 host
- Kebutuhan host = host + 2 = 881 + 2 = 883 host



## CIDR - GNS3
### Topologi

Berikut gambar topologi GNS3 yang sudah kami beri label subnet A1 sampai A25. Penomoran subnet sama dengan yang dipakai pada VLSM, sehingga hasil kedua metode dapat dibandingkan.

![alt text](../Jarkom-Modul-4-2026-K-35/images/cidr-topologi.png)

Hanya router Cyberia yang terhubung ke NAT. Dari rancangan tersebut terdapat 25 subnet, terdiri dari 16 subnet LAN (router ke switch atau router ke node) dan 9 link antar-router. Link Cyberia ke NAT tidak dihitung karena alamatnya diberikan oleh NAT GNS3.

### Subnetting
Hasil subnetting menggunakan metode CIDR adalah sebagai berikut.

- Penggabungan

![alt text](../Jarkom-Modul-4-2026-K-35/images/cidr-penggabungan.png)

Aturan penggabungan: dua blok digabung menjadi satu blok seukuran 2 x blok yang terbesar, sehingga netmask akhir = netmask terkecil dikurangi 1. Blok yang lebih besar menempati alamat terendah, dan blok yang lebih kecil ditempatkan di awal separuh atas.

Contoh perhitungan:

B1 = A3 (/29, 8 IP) + A2 (/30, 4 IP). Blok terbesar 8, maka hasil 2 x 8 = 16 IP = /28.
C3 = A4 (/22, 1024 IP) + B2 (/22, 1024 IP). Hasil 2 x 1024 = 2048 IP = /21.
D1 = C3 (/21) + C2 (/21). Hasil 2 x 2048 = 4096 IP = /20.
K1 = D1 (/20) + J1 (/20). Hasil 2 x 4096 = 8192 IP = /19.

Penggabungan mengikuti cabang topologi (ujung ke arah Cyberia) dan menggabungkan blok kecil lebih dulu agar tidak ada ruang terbuang. Terdapat 24 penggabungan dalam 10 level.

- Pembagian IP

![alt text](../Jarkom-Modul-4-2026-K-35/images/cidr-pembagian%20IP.png)

Pembagian dilakukan dari atas ke bawah, mulai dari blok akhir K1 = 10.81.0.0/19. Setiap blok dibagi menjadi dua separuh:

Separuh bawah (alamat terendah) diberikan kepada blok yang lebih besar (Gabungan dari 1).
Separuh atas diberikan kepada blok kedua (Gabungan dari 2), dimulai dari alamat awalnya.

Contoh pada K1 (10.81.0.0/19): D1 (/20) mendapat 10.81.0.0/20 (10.81.0.0 - 10.81.15.255), sedangkan J1 (/20) mendapat 10.81.16.0/20 (10.81.16.0 - 10.81.31.255). Contoh pada D1 (10.81.0.0/20): C3 (/21) mendapat 10.81.0.0/21, dan C2 (/21) mendapat 10.81.8.0/21.