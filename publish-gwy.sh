#!/bin/bash

org="mqnl6k"
dtype="MyGwyDeviceType"
did="myGwyDevice"
gtype="MyGatewayType"
gid="myGateway"
token="20171009"
topic="k34/heat/feed/water"

b64topic=$(echo $topic | base64)
n=0

while true
do

  n=$[n+1]
  ts=$(date +%s)

  json="{\"time\": $ts, \"value\": $n}"

  mosquitto_pub -h $org.messaging.internetofthings.ibmcloud.com -t "iot-2/type/$dtype/id/$did/evt/$b64topic/fmt/json" -m "$json" -i "g:$org:$gtype:$gid" -P "$token" -u "use-token-auth" -q 1 

  echo "publishing $json"
  sleep 1

done
