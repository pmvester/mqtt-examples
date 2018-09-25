#!/bin/bash

did="dnxDevice1"
dtype="DnxDevice"
orgId="b6824e"
token="1221080932"
topic="temp"

n=0

while true
do

  n=$[n+1]
  ts=$(date +%s)

  json="{\"time\": $ts, \"value\": $n}"

  mosquitto_pub -h $orgId.messaging.internetofthings.ibmcloud.com -t "iot-2/evt/$topic/fmt/json" -m "$json" -i "d:$orgId:$dtype:$did" -P "$token" -u "use-token-auth" -q 1 

  echo "publishing $json"
  sleep 1

done
