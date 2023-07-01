host <domain> [<dnsserver>] #<--- Resove the ip of the <domain>. If you are scannig a subnet, add a dnserver may be useful, by default the command use /etc/resolv.conf
host -t <mx/txt/...> <domain> #<--- Resolve the records type asociated for a domain.

for name in $(cat <list>); do host $name.<domain> | grep "has address"; done #<--- Perform subdomain enumeration through a list.

for octet in $(seq  50 100); do host 38.100.193.$octet; done | grep -v "not found" #<--- Perform bruteforce inverse lookup (ip to domain).

host -l <domain name> <dns server address> #<--- Transfer Zone.
