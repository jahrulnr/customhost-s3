#!/bin/sh

export $(cat /etc/.env | xargs)
S3_PATH="${S3_SCHEME}://${S3_DOMAIN}/${S3_BUCKET}/"

sed -i "s#<S3_PATH>#${S3_PATH}#g" /etc/nginx/conf.d/default.conf
sed -i "s#<S3_DOMAIN>#${S3_DOMAIN}#g" /etc/nginx/conf.d/default.conf
sed -i "s#<S3_SCHEME>#${S3_SCHEME}#g" /etc/nginx/conf.d/default.conf
cat  /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"

# tail -f /dev/stdout