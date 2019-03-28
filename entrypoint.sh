#!/bin/bash

sed -r "s|{{ES_HOST}}|$ES_HOST|g" /opt/elastalert-server/config/config.json.tpl > /opt/elastalert-server/config/config.json
sed -r "s|{{ES_PORT}}|$ES_PORT|g" /opt/elastalert-server/config/config.json.tpl > /opt/elastalert-server/config/config.json

sed -r "s|{{ES_HOST}}|$ES_HOST|g" /opt/elastalert/config.yaml.tpl > /opt/elastalert/config.yaml
sed -r "s|{{ES_PORT}}|$ES_PORT|g" /opt/elastalert/config.yaml.tpl > /opt/elastalert/config.yaml

npm start
