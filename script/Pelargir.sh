
# Ke Minastir (Gateway Utama)
auto eth0
iface eth0 inet static
	address 192.223.15.234
	netmask 255.255.255.252
	gateway 192.223.15.233

# Ke AnduinBanks (Link A12)
auto eth1
iface eth1 inet static
	address 192.223.15.237
	netmask 255.255.255.252

# Ke Web Palantir (A11)
auto eth2
iface eth2 inet static
	address 192.223.15.213
	netmask 255.255.255.252

# --- ROUTING STATIC (Downstream) ---
# Ke Gilgalad & Cirdan (A13) via AnduinBanks (.238)
up route add -net 192.223.15.0 netmask 255.255.255.128 gw 192.223.15.238