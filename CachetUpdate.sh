#!/bin/bash
#to=$1 (not in use)
subject=$2
message=$3

# Uncomment this next line for Production
curl -H 'Content-Type: application/json' -H 'X-Cachet-Token: SgFYq9xlVRhPdC2yKDau' https://status.xelionsystemen.com/api/v1/components/${subject} -d '{"status": '$message'}' -X PUT
