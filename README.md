# Jarkom-Modul-5-K24-2025

1. OSGILIATH (Router)

→ eth0: NAT1
→ eth1: Rivendell
→ eth2: Moria
→ eth3: Minastir

auto eth0
iface eth0 inet static
  address 192.223.1.49
  netmask 255.255.255.252

auto eth1
iface eth1 inet static
  address 192.223.1.29
  netmask 255.255.255.252    # A7 ke Rivendell

auto eth2
iface eth2 inet static
  address 192.223.1.17
  netmask 255.255.255.252    # A1 ke Moria

auto eth3
iface eth3 inet static
  address 192.223.1.33
  netmask 255.255.255.252    # A8 ke Minastir

2. MORIA (Router)

→ eth0: Osgiliath
→ eth1: Switch2 → IronHills
→ eth2: Wilderland
→ eth3: (unused)

auto eth0
iface eth0 inet static
  address 192.223.1.18
  netmask 255.255.255.252    # A1

auto eth1
iface eth1 inet static
  address 192.223.0.1
  netmask 255.255.255.192    # A2

auto eth2
iface eth2 inet static
  address 192.223.1.1
  netmask 255.255.255.248    # A3

auto eth3
iface eth3 inet manual

3. WILDERLAND (Router)

→ eth0: Moria
→ eth1: Durin
→ eth2: Switch3 → Khamul

auto eth0
iface eth0 inet static
  address 192.223.0.2
  netmask 255.255.255.192    # A2

auto eth1
iface eth1 inet static
  address 192.223.0.3
  netmask 255.255.255.192    # A2 ke Durin

auto eth2
iface eth2 inet static
  address 192.223.1.2
  netmask 255.255.255.248    # A3 ke Switch3-Khamul

4. DURIN (Client) — A2
auto eth0
iface eth0 inet static
  address 192.223.0.4
  netmask 255.255.255.192
  gateway 192.223.0.3

5. KHAMUL (Client) — A3
auto eth0
iface eth0 inet static
  address 192.223.1.3
  netmask 255.255.255.248
  gateway 192.223.1.2

6. RIVENDELL (DHCP Relay)

→ eth0: Osgiliath
→ eth1: Switch1 → Vilya/Narya

auto eth0
iface eth0 inet static
  address 192.223.1.30
  netmask 255.255.255.252    # A7

auto eth1
iface eth1 inet static
  address 192.223.1.9
  netmask 255.255.255.248    # A6

7. VILYA (DHCP Server)
auto eth0
iface eth0 inet static
  address 192.223.1.10
  netmask 255.255.255.248
  gateway 192.223.1.9

8. NARYA (DNS Server)
auto eth0
iface eth0 inet static
  address 192.223.1.11
  netmask 255.255.255.248
  gateway 192.223.1.9

9. MINASTIR (Router)

→ eth0: Osgiliath
→ eth1: Switch4 → Elendil & Isildur
→ eth2: Pelargir

auto eth0
iface eth0 inet static
  address 192.223.1.34
  netmask 255.255.255.252    # A8

auto eth1
iface eth1 inet static
  address 192.223.0.193
  netmask 255.255.255.0      # A9

auto eth2
iface eth2 inet static
  address 192.223.1.37
  netmask 255.255.255.252    # A10

10. ELENDIL (Client) — A9
auto eth0
iface eth0 inet static
  address 192.223.0.194
  netmask 255.255.255.0
  gateway 192.223.0.193

11. ISILDUR (Client) — A9
auto eth0
iface eth0 inet static
  address 192.223.0.195
  netmask 255.255.255.0
  gateway 192.223.0.193

12. PELARGIR (Router)

→ eth0: Minastir
→ eth1: Webserver2
→ eth2: AnduinBanks

auto eth0
iface eth0 inet static
  address 192.223.1.38
  netmask 255.255.255.252    # A10

auto eth1
iface eth1 inet static
  address 192.223.1.41
  netmask 255.255.255.252    # A11 ke Webserver2

auto eth2
iface eth2 inet static
  address 192.223.1.45
  netmask 255.255.255.252    # A12 ke AnduinBanks

13. Palantir (Webserver 2)
auto eth0
iface eth0 inet static
  address 192.223.1.42
  netmask 255.255.255.252
  gateway 192.223.1.41

14. ANDUINBANKS (Router)

→ eth0: Pelargir
→ eth1: Switch5 → Gilgalad & Cirdan

auto eth0
iface eth0 inet static
  address 192.223.1.46
  netmask 255.255.255.252    # A12

auto eth1
iface eth1 inet static
  address 192.223.0.65
  netmask 255.255.255.128    # A13

15. GILGALAD (Client) — A13
auto eth0
iface eth0 inet static
  address 192.223.0.66
  netmask 255.255.255.128
  gateway 192.223.0.65

16. CIRDAN (Client) — A13
auto eth0
iface eth0 inet static
  address 192.223.0.67
  netmask 255.255.255.128
  gateway 192.223.0.65

17. IRONHILLS (Web Server 1) — A2

Via Switch2 → Moria eth1

auto eth0
iface eth0 inet static
  address 192.223.0.5
  netmask 255.255.255.192
  gateway 192.223.0.1
