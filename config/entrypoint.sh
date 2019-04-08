#!/bin/sh

sed -ri "s|<ES_HOST>|$ES_HOST|g" /opt/elastalert-server/config/config.json
sed -ri "s|<ES_PORT>|$ES_PORT|g" /opt/elastalert-server/config/config.json

sed -ri "s|<ES_HOST>|$ES_HOST|g" /opt/elastalert/config.yaml
sed -ri "s|<ES_PORT>|$ES_PORT|g" /opt/elastalert/config.yaml
sed -ri "s|<ES_SSL>|$ES_SSL|g" /opt/elastalert/config.yaml
sed -ri "s|<ES_USERNAME>|$ES_USERNAME|g" /opt/elastalert/config.yaml
sed -ri "s|<ES_PASSWORD>|$ES_PASSWORD|g" /opt/elastalert/config.yaml
sed -ri "s|<ES_VERIFY_CERT>|$ES_VERIFY_CERT|g" /opt/elastalert/config.yaml
sed -ri "s|<SMTP_HOST>|$SMTP_HOST|g" /opt/elastalert/config.yaml
sed -ri "s|<SMTP_PORT>|$SMTP_PORT|g" /opt/elastalert/config.yaml
sed -ri "s|<FROM_ADDRESS>|$FROM_ADDRESS|g" /opt/elastalert/config.yaml
sed -ri "s|<SMTP_USERNAME>|$SMTP_USERNAME|g" /opt/elastalert/mail_auth.yml
sed -ri "s|<SMTP_PASSWORD>|$SMTP_PASSWORD|g" /opt/elastalert/mail_auth.yml

cp /opt/elastalert/config.yaml /opt/elastalert/config-test.yaml

npm start
