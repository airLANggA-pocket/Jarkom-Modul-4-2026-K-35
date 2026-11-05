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

**Link Subnetting**: [Spreadsheet Modul 4 Komdat Jarkom 2026_K35](https://docs.google.com/spreadsheets/d/1kNx5OV6l-Z7Dt_cw2WDNFIgymafBO41x/edit?usp=sharing&ouid=111844958009810909698&rtpof=true&sd=true)

## VLSM - CISCO PACKET TRACER

### Topologi
Berikut gambar topologi menggunakan metode VLSM yang sudah kami rancang di Cisco Packet Tracer.

![alt text](/images/vlsm-topologi.png)

Dari rancangan topologi tersebut, total subnet yang digunakan adalah 25 subnet dengan jumlah IP sebanyak 2864. Total ukuran blok yang dapat digunakan adalah sebanyak 4138 IP, maka dibutuhkan subnet /19 dengan total 8192 IP. 

### VLSM Tree
Berikut adalah tree yang digunakan dalam pembagian IP pada perhitungan VLSM.

![alt text](/images/vlsm-tree.png)

### Subnetting
Hasil subnetting menggunakan metode VLSM adalah sebagai berikut.

![alt text](/images/vlsm-subnetting.jpg)

#### Perhitungan Pembagian IP
Contoh perhitungan pada **subnet A4**.

#### 1. Prefix
Perhitungan prefix dilakukan dengan menghitung kebutuhan host terlebih dahulu.

- Host = 881 host
- Kebutuhan host = host + 2 -> 881 + 2 = 883 host
- Cari n yang -> 2ⁿ − 2 ≥ kebutuhan host
- Untuk n = 10 -> 2¹⁰ - 2 ≥ 883 (cukup)
- Prefix = 32 - n -> 32 - 10 = 22

Maka, prefix yang didapat adalah /22.

#### 2. Network ID
Network ID adalah IP address awal yang mewakili subnet A4. Ini adalah subnet pertama pada blok 10.81. 0.0, maka NID adalah 10.81.0.0.

#### 3. Broadcast Address
Broadcast address adalah IP setelah range IP yang digunakan. Range IPnya berada pada 10.81.0.1 - 10.81.3.254, maka broadcast addressnya adalah 10.81.3.255.

#### 4. Range IP
Range IP dimulai dari alamat setelah Network ID sampai dengan sebelum broadcast address, yaitu 10.81.8.1 - 10.81.3.254.

### Static IP
Konfigurasi IP statis pada setiap router dan node (PC ataupun laptop) dilakukan dengan hasil dari perhitungan yang ada pada tabel subnetting.
Kami melakukannya dengan manual dengan urutan sebagai berikut.
#### 1. Router: Config > Interface
Contoh konfigurasi pada router **Wired**:
- IPv4 Address: `10.81.16.58`
- Subnet Mask : `255.255.255.252`

#### 2. Node Device: Desktop > IP Configuration > Static
Contoh konfigurasi pada device **Alice** (Laptop)
- IPv4 Address    : `10.81.12.2`
- Subnet Mask     : `255.255.255.0`
- Default Gateway : `10.81.12.1`

### Routing
Routing ini dilakukan agar komunikasi dapat dilakukan antar router atau node.
```
ip route <Destination network ID> <Netmask> <Gateway>
```

- Wired (Pusat)
```
ip route 10.81.14.0 255.255.255.128 10.81.16.57
ip route 10.81.12.0 255.255.254.0 10.81.16.66
ip route 10.81.15.64 255.255.255.192 10.81.16.66
ip route 10.81.0.0 255.255.252.0 10.81.16.34
ip route 10.81.8.0 255.255.254.0 10.81.16.35
ip route 10.81.15.192 255.255.255.192 10.81.16.35
ip route 10.81.4.0 255.255.252.0 10.81.16.36
ip route 10.81.16.40 255.255.255.248 10.81.16.36
ip route 10.81.10.0 255.255.254.0 10.81.16.70
ip route 10.81.14.128 255.255.255.128 10.81.16.70
ip route 10.81.15.128 255.255.255.192 10.81.16.70
ip route 10.81.16.48 255.255.255.248 10.81.16.70
ip route 10.81.16.0 255.255.255.224 10.81.16.70
ip route 10.81.15.0 255.255.255.192 10.81.16.70
```
- Cyberia
```
ip route 0.0.0.0 0.0.0.0 10.81.16.58
```
- Navi
```
ip route 0.0.0.0 0.0.0.0 10.81.16.65
```
- Pysche
```
ip route 0.0.0.0 0.0.0.0 10.81.16.33
```
- Copland
```
ip route 0.0.0.0 0.0.0.0 10.81.16.33
```
- Accela
```
ip route 0.0.0.0 0.0.0.0 10.81.16.61
```
- Shibuya
```
ip route 0.0.0.0 0.0.0.0 10.81.16.89
```
- Schumann
```
ip route 0.0.0.0 0.0.0.0 10.81.16.33
ip route 10.81.4.0 255.255.252.0 10.81.16.62
```
- Tachibana
```
ip route 0.0.0.0 0.0.0.0 10.81.16.69
ip route 10.81.14.128 255.255.255.128 10.81.16.74
ip route 10.81.15.128 255.255.255.192 10.81.16.74
ip route 10.81.16.48 255.255.255.248 10.81.16.74
ip route 10.81.16.0 255.255.255.224 10.81.16.74
ip route 10.81.15.0 255.255.255.192 10.81.16.74
```
- Deus
```
ip route 0.0.0.0 0.0.0.0 10.81.16.73
ip route 10.81.15.128 255.255.255.192 10.81.16.78
ip route 10.81.16.48 255.255.255.248 10.81.16.78
ip route 10.81.16.0 255.255.255.224 10.81.16.78
ip route 10.81.15.0 255.255.255.192 10.81.16.78
```
- Protocol7
```
ip route 0.0.0.0 0.0.0.0 10.81.16.77
ip route 10.81.16.48 255.255.255.248 10.81.16.82
ip route 10.81.16.0 255.255.255.224 10.81.16.82
ip route 10.81.15.0 255.255.255.192 10.81.16.82
```
- Knights
```
ip route 0.0.0.0 0.0.0.0 10.81.16.81
ip route 10.81.16.0 255.255.255.224 10.81.16.86
ip route 10.81.15.0 255.255.255.192 10.81.16.86
```
- Phantoma
```
ip route 0.0.0.0 0.0.0.0 10.81.16.85
ip route 10.81.15.0 255.255.255.192 10.81.16.90
```

## CIDR - GNS3
### Topologi

Berikut gambar topologi GNS3 yang sudah kami beri label subnet A1 sampai A25. Penomoran subnet sama dengan yang dipakai pada VLSM, sehingga hasil kedua metode dapat dibandingkan.

![alt text](/images/cidr-topologi.png)

Hanya router Cyberia yang terhubung ke NAT. Dari rancangan tersebut terdapat 25 subnet, terdiri dari 16 subnet LAN (router ke switch atau router ke node) dan 9 link antar-router. Link Cyberia ke NAT tidak dihitung karena alamatnya diberikan oleh NAT GNS3.

### CIDR TREE

![alt text](/images/cidr-tree.png)

### Subnetting
Hasil subnetting menggunakan metode CIDR adalah sebagai berikut.

- Penggabungan

![alt text](/images/cidr-penggabungan.png)

Aturan penggabungan: dua blok digabung menjadi satu blok seukuran 2 x blok yang terbesar, sehingga netmask akhir = netmask terkecil dikurangi 1. Blok yang lebih besar menempati alamat terendah, dan blok yang lebih kecil ditempatkan di awal separuh atas.

Contoh perhitungan:

B1 = A3 (/29, 8 IP) + A2 (/30, 4 IP). 

Blok terbesar 8, maka hasil 2 x 8 = 16 IP = /28.

C3 = A4 (/22, 1024 IP) + B2 (/22, 1024 IP). 

Hasil 2 x 1024 = 2048 IP = /21.

D1 = C3 (/21) + C2 (/21). 

Hasil 2 x 2048 = 4096 IP = /20.

K1 = D1 (/20) + J1 (/20). 

Hasil 2 x 4096 = 8192 IP = /19.

Penggabungan mengikuti cabang topologi (ujung ke arah Cyberia) dan menggabungkan blok kecil lebih dulu agar tidak ada ruang terbuang. Terdapat 24 penggabungan dalam 10 level.

- Pembagian IP

![alt text](/images/cidr-pembagian%20IP.png)

Pembagian dilakukan dari atas ke bawah, mulai dari blok akhir K1 = 10.81.0.0/19. Setiap blok dibagi menjadi dua separuh:

Separuh bawah (alamat terendah) diberikan kepada blok yang lebih besar (Gabungan dari 1).
Separuh atas diberikan kepada blok kedua (Gabungan dari 2), dimulai dari alamat awalnya.

Contoh pada K1 (10.81.0.0/19): D1 (/20) mendapat 10.81.0.0/20 (10.81.0.0 - 10.81.15.255), sedangkan J1 (/20) mendapat 10.81.16.0/20 (10.81.16.0 - 10.81.31.255). Contoh pada D1 (10.81.0.0/20): C3 (/21) mendapat 10.81.0.0/21, dan C2 (/21) mendapat 10.81.8.0/21.