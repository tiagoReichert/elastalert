#!/bin/sh

sed -ri "s|<ES_HOST>|$ES_HOST|g" /opt/elastalert-server/config/config.json
sed -ri "s|<ES_PORT>|$ES_PORT|g" /opt/elastalert-server/config/config.json

sed -ri "s|<ES_HOST>|$ES_HOST|g" /opt/elastalert/config.yaml
sed -ri "s|<ES_PORT>|$ES_PORT|g" /opt/elastalert/config.yaml
sed -ri "s|<ES_SSL>|$ES_SSL|g" /opt/elastalert/config.yaml
sed -ri "s|<ES_USERNAME>|$ES_USERNAME|g" /opt/elastalert/config.yaml
sed -ri "s|<ES_PASSWORD>|$ES_PASSWORD|g" /opt/elastalert/config.yaml

npm start
