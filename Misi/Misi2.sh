# mengecek osgilith
ip addr show eth0

# iptables snat
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source 192.168.122.172 # ini diisi dari yang diatas

# klo belum ada iptable 
apt-get install iptables

## VILYA [DHCP SERVER] ##
apt-get update
apt-get install isc-dhcp-server

nano /etc/default/isc-dhcp-server
INTERFACESv4="eth0"

nano /etc/dhcp/dhcpd.conf
# --- KONFIGURASI GLOBAL ---
default-lease-time 600;
max-lease-time 7200;

# Arahkan DNS ke Narya (192.223.15.203) & Google Backup
option domain-name-servers 192.223.15.203, 8.8.8.8;
option domain-name "jarkom-modul5.com";

# --- SUBNET VILYA SENDIRI (WAJIB ADA) ---
# Walaupun Vilya tidak butuh DHCP, subnet tempat dia berada (A6)
# harus dideklarasikan kosong agar service bisa jalan.
subnet 192.223.15.200 netmask 255.255.255.248 {
}

# --- SUBNET CLIENT A9 (Elendil & Isildur) ---
subnet 192.223.14.0 netmask 255.255.255.0 {
    range 192.223.14.10 192.223.14.250;
    option routers 192.223.14.1;
    option broadcast-address 192.223.14.255;
}

# --- SUBNET CLIENT A13 (Gilgalad & Cirdan) ---
subnet 192.223.15.0 netmask 255.255.255.128 {
    range 192.223.15.10 192.223.15.120;
    option routers 192.223.15.1;
    option broadcast-address 192.223.15.127;
}

# --- SUBNET CLIENT A2 (Durin) ---
subnet 192.223.15.128 netmask 255.255.255.192 {
    range 192.223.15.130 192.223.15.190;
    option routers 192.223.15.129;
    option broadcast-address 192.223.15.191;
}

# --- SUBNET CLIENT A3 (Khamul) ---
subnet 192.223.15.192 netmask 255.255.255.248 {
    range 192.223.15.194 192.223.15.198;
    option routers 192.223.15.193;
    option broadcast-address 192.223.15.199;
}

service isc-dhcp-server restart
service isc-dhcp-server status