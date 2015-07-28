#!/bin/bash

chown bigcouch:daemon /srv /var/log/bigcouch -R

service bigcouch start

exec /bin/bash "$@"

