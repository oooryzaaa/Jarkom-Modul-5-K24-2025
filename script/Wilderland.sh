# Ke Moria (Gateway Utama)
auto eth0
iface eth0 inet static
	address 192.223.15.218
	netmask 255.255.255.252
	gateway 192.223.15.217

# Ke Durin (A2)
auto eth1
iface eth1 inet static
	address 192.223.15.129
	netmask 255.255.255.192

# Ke Khamul (A3)
auto eth2
iface eth2 inet static
	address 192.223.15.193
	netmask 255.255.255.248