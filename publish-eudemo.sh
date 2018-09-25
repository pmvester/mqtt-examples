#!/bin/bash

did="MV_pseudoDevice1"
dtype="MV_PseudoDevice"
orgId="s8sb6o"
token="1221080932"
topic="temp"

n=0

while true
do

  n=$(($RANDOM % 43))
  ts=$(date +%s)

  json="{\"time\": $ts, \"value\": $n}"

  mosquitto_pub -h $orgId.messaging.internetofthings.ibmcloud.com -t "iot-2/evt/$topic/fmt/json" -m "$json" -i "d:$orgId:$dtype:$did" -P "$token" -u "use-token-auth" -q 1 

  echo "publishing $json"
  sleep 1

done
