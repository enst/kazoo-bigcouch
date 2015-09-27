#!/bin/bash

chown bigcouch:daemon /srv /var/log/bigcouch -R

[ -n $COOKIE ] || COOKIE=`date +%s | sha256sum | base64 | head -c 32`
#sed -i '/bind_address/s/0.0.0.0/127.0.0.1/' /etc/kazoo/bigcouch/local.ini 
sed -i "/-setcookie/s/change_me/$COOKIE/" /etc/kazoo/bigcouch/vm.args

service bigcouch start

exec /bin/bash "$@"

