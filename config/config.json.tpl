{
  "appName": "elastalert-server",
  "port": 3030,
  "elastalertPath": "/opt/elastalert",
  "verbose": false,
  "es_debug": false,
  "debug": false,
  "rulesPath": {
    "relative": true,
    "path": "/rules"
  },
  "templatesPath": {
    "relative": true,
    "path": "/rule_templates"
  },
  "es_host": "{{ES_HOST}}",
  "es_port": {{ES_PORT}},
  "writeback_index": "elastalert_status"
}
