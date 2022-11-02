#/usr/bin/env sh
ip_address=$(curl -s http://checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')
url="https://dynamicdns.park-your-domain.com/update?host=@&domain=zenjavi.com&password=${NAMECHEAP_DYNDNS_PASSWORD}&ip=${ip_address}"
curl -s -o /dev/null $url
