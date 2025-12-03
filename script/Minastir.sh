# Ke Osgiliath (Gateway Utama)
auto eth0
iface eth0 inet static
	address 192.223.15.230
	netmask 255.255.255.252
	gateway 192.223.15.229

# Ke Elendil & Isildur (A9)
auto eth1
iface eth1 inet static
	address 192.223.14.1
	netmask 255.255.255.0

# Ke Pelargir (Link A10)
auto eth2
iface eth2 inet static
	address 192.223.15.233
	netmask 255.255.255.252

# --- ROUTING STATIC (Downstream) ---
# Ke Palantir (A11) via Pelargir (.234)
up route add -net 192.223.15.212 netmask 255.255.255.252 gw 192.223.15.234
# Ke Gilgalad & Cirdan (A13) via Pelargir (.234)
up route add -net 192.223.15.0 netmask 255.255.255.128 gw 192.223.15.234
# Ke Link A12 via Pelargir (.234)
up route add -net 192.223.15.236 netmask 255.255.255.252 gw 192.223.15.234