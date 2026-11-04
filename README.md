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
