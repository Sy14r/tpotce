#!/bin/bash

# Let's ensure normal operation on exit or if interrupted ...
function fuCLEANUP {
  exit 0
}
trap fuCLEANUP EXIT

# Download updated translation maps
cd /etc/listbot 
git pull
cd /

sed -i /etc/logstash/conf.d/logstash.conf -e "s/CENTRAL_SERVER_IP/$SERVER_IP/g"
