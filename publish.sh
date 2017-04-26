#!/bin/bash

n=0
topic="k34/heat/feed/water"
b64topic=$(echo $topic | base64)

while true
do

  n=$[n+1]
  ts=$(date +%s)

  json="{\"time\": $ts, \"value\": $n}"

  mosquitto_pub -h qc65wr.messaging.internetofthings.ibmcloud.com -t "iot-2/evt/$b64topic/fmt/json" -m "$json" -i "d:qc65wr:MyDeviceType:myDevice" -P "1221080932" -u "use-token-auth" -q 1 

  echo "publishing $json"
  sleep 1

done
