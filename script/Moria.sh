# Ke Osgiliath (Gateway Utama)
auto eth0
iface eth0 inet static
	address 192.223.15.222
	netmask 255.255.255.252
	gateway 192.223.15.221

# Ke Web IronHills (A1)
auto eth1
iface eth1 inet static
	address 192.223.15.209
	netmask 255.255.255.252

# Ke Wilderland (Link A4)
auto eth2
iface eth2 inet static
	address 192.223.15.217
	netmask 255.255.255.252

# --- ROUTING STATIC (Downstream) ---
# Ke Durin (A2) via Wilderland (.218)
up route add -net 192.223.15.128 netmask 255.255.255.192 gw 192.223.15.218
# Ke Khamul (A3) via Wilderland (.218)
up route add -net 192.223.15.192 netmask 255.255.255.248 gw 192.223.15.218