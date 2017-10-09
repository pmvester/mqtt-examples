#!/bin/bash

org="mqnl6k"
dtype="MyDeviceType"
did="myDevice"
token="20171009"
topic="k34/heat/feed/water"

b64topic=$(echo $topic | base64)
n=0

while true
do

  n=$[n+1]
  ts=$(date +%s)

  json="{\"time\": $ts, \"value\": $n}"

  mosquitto_pub -h $org.messaging.internetofthings.ibmcloud.com -t "iot-2/evt/$b64topic/fmt/json" -m "$json" -i "d:$org:$dtype:$did" -P "$token" -u "use-token-auth" -q 1 

  echo "publishing $json"
  sleep 1

done
