#!/bin/bash
# source requirments (doesn't work with zabbix actions)
# $1, $2 and $3 comming from Zabbix mail template
#to=$1 (not used)
subject=$2
message=$3
url=https://<YOUR-DOMAIN>/api/v1/components
apitoken=<YOUR-API-KEY>
curl  -H 'Content-Type: application/json' -H 'X-Cachet-Token: '$apitoken'' $url/${subject} -d '{"status": '$message'}' -X PUT
