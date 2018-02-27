#!/usr/bin/env bash
echo " 0 24 * * *     /dehydrated/dehydrated --cron --accept-terms --config /dehydrated/config/conf" >> /etc/crontabs/root
crond -c /etc/crontabs -f &
nginx -c /etc/nginx/nginx_dehydrated.conf -g 'daemon off;'
/dehydrated/dehydrated --cron --accept-terms --config /dehydrated/config/conf
