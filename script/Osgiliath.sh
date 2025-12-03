auto eth0
iface eth0 inet dhcp

# Ke Rivendell (Link A7)
auto eth1
iface eth1 inet static
	address 192.223.15.225
	netmask 255.255.255.252

# Ke Moria (Link A5)
auto eth2
iface eth2 inet static
	address 192.223.15.221
	netmask 255.255.255.252

# Ke Minastir (Link A8
auto eth3
iface eth3 inet static
	address 192.223.15.229
	netmask 255.255.255.252

# --- ROUTING STATIC ---

# JALUR KIRI (Via Moria IP .222)
# Ke Durin (A2)
up route add -net 192.223.15.128 netmask 255.255.255.192 gw 192.223.15.222
# Ke Khamul (A3)
up route add -net 192.223.15.192 netmask 255.255.255.248 gw 192.223.15.222
# Ke Web IronHills (A1)
up route add -net 192.223.15.208 netmask 255.255.255.252 gw 192.223.15.222
# Ke Link Wilderland (A4)
up route add -net 192.223.15.216 netmask 255.255.255.252 gw 192.223.15.222

# JALUR BAWAH (Via Rivendell IP .226)
# Ke Server Narya/Vilya (A6)
up route add -net 192.223.15.200 netmask 255.255.255.248 gw 192.223.15.226

# JALUR KANAN (Via Minastir IP .230)
# Ke Elendil & Isildur (A9)
up route add -net 192.223.14.0 netmask 255.255.255.0 gw 192.223.15.230
# Ke Gilgalad & Cirdan (A13)
up route add -net 192.223.15.0 netmask 255.255.255.128 gw 192.223.15.230
# Ke Web Palantir (A11)
up route add -net 192.223.15.212 netmask 255.255.255.252 gw 192.223.15.230
# Ke Link Pelargir (A10)
up route add -net 192.223.15.232 netmask 255.255.255.252 gw 192.223.15.230
# Ke Link AnduinBanks (A12)
up route add -net 192.223.15.236 netmask 255.255.255.252 gw 192.223.15.230