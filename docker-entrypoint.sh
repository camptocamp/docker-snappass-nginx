#!/bin/bash

set -e

echo "${NGX_EXTRA_CONF}" > /etc/nginx/extra.conf
echo "${NGX_HTTP_ACCESS}" > /etc/nginx/http-access.conf

/usr/local/bin/confd -onetime -backend env

exec "$@"
