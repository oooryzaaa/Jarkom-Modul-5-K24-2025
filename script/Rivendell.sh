# Ke Osgiliath (Gateway Utama)
auto eth0
iface eth0 inet static
	address 192.223.15.226
	netmask 255.255.255.252
	gateway 192.223.15.225

# Ke Server Narya & Vilya (A6)
auto eth1
iface eth1 inet static
	address 192.223.15.201
	netmask 255.255.255.248