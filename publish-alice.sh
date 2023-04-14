#!/bin/bash

did="mvDevice001"
dtype="MvDevice"
orgId="masdev"
token="1221080932"
topic="temp"

n=0

while true
do

  # create a random numeric value in the range 0 to 99
  n=$(($RANDOM % 100))
  ts=$(date +%s)

  json="{\"time\": $ts, \"value\": $n}"

  mosquitto_pub -L mqtts://$orgId.messaging.iot.alice.imomax.org/"iot-2/evt/$topic/fmt/json" \
                -m "$json" \
                -i "d:$orgId:$dtype:$did" \
                -P "$token" \
                -u "use-token-auth" \
                -q 1 \
                --cafile ca.crt \
                --cert client.crt \
                --key client.key \
                -p 443

  echo "publishing $json"
  sleep 1

done
