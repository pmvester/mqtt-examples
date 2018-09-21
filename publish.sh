#!/bin/bash

orgId="b6824e"
appId="a-b6824e-ltp0wdw6ib"
token="sakTi)UDn37Kps(iL+"
dtype="DnxDevice"
did="dnxDevice1"
topic="k34/heat/feed/water"

b64topic=$(echo $topic | base64)
n=0

while true
do

  n=$[n+1]
  ts=$(date +%s)

  json="{\"time\": $ts, \"value\": $n}"

  mosquitto_pub -h $orgId.messaging.internetofthings.ibmcloud.com -t "iot-2/type/DnxDevice/id/dnxDevice1/evt/$b64topic/fmt/json" -m "$json" -i "a:$orgId:$appId" -P "$token" -u "a-b6824e-ltp0wdw6ib" -q 1 

  echo "publishing $json"
  sleep 1

done
