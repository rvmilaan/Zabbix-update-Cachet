#!/bin/bash
source requirments
# $1, $2 and $3 comming from Zabbix mail template
#to=$1 (not used)
subject=$2
message=$3
url=https://status.xelionsystemen.com/api/v1/components
apitoken=SgFYq9xlVRhPdC2yKDau
# Uncomment this next line for Production
curl  -H 'Content-Type: application/json' -H 'X-Cachet-Token: '$apitoken'' $url/${subject} -d '{"status": '$message'}' -X PUT
