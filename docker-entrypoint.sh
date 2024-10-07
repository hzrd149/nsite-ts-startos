#!/bin/sh

chown -R nginx:nginx /var/cache/nginx

export ONION_HOST=$(yq e '.tor-address' /root/start9/config.yaml)

exec "$@"
