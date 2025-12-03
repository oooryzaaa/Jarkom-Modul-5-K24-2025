# Ke Pelargir (Gateway Utama)
auto eth0
iface eth0 inet static
	address 192.223.15.238
	netmask 255.255.255.252
	gateway 192.223.15.237

# Ke Gilgalad & Cirdan (A13)
auto eth1
iface eth1 inet static
	address 192.223.15.1
	netmask 255.255.255.128