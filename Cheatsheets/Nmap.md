# NMAP


## Ping Scan
```shell
nmap -sP target
```

- Identify active hosts on network, without sending packages

- target can be a domain, IPv4 or IPv6 adresses
----
## Find ports state of a target
```shell
nmap target
```
- Show open ports and the services running on it
----
## System scan
```shell
sudo nmap -O target
```
- Show Operation System informations about target
----

## Service version scan
```shell
nmap -sV target
```
- Show services versions running on the target host
----
## Port state
```shell
nmap -p port_1,port_2 target
```

- Show states (open or closed) of port_1 _and_ port_2 on target host
----
## Range of ports states
```shell
nmap -p start_port-end_port target
```

- Check state of **all the ports** in the range **from start_port to end_port** on target host
----
## Stealth Scan
```shell
sudo nmap -sS target
```

- Run a harder to detect scan on the target
----