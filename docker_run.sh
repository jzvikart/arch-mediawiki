#!/bin/bash
# For some reason, /run/httpd disappears from docker image
[ ! -d /run/httpd ] && mkdir -p /run/httpd
exec /bin/httpd -k start -DFOREGROUND
