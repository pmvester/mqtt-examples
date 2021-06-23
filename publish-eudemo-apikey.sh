#!/bin/bash

did="MV_pseudoDevice21"
dtype="MV_PseudoDevice2"
orgId="s8sb6o"
token="m?X2nJwTN2ZCVb4TB5"
topic="random"
apikey="a-s8sb6o-wf92guqqil"

while true
do

  # create a random integer in the range 0 to 42
  n=$(($RANDOM % 43))
  ts=$(date +%s)

  json="{\"time\": $ts, \"value\": $n}"

#iot-2/type/device_type/id/device_id/evt/event_id/fmt/format_string
  mosquitto_pub -h $orgId.messaging.internetofthings.ibmcloud.com -t "iot-2/type/$dtype/id/$did/evt/$topic/fmt/json" -m "$json" -i "a:$orgId:$apikey" -P "$token" -u "$apikey" -q 1 

  echo "publishing $json"
  sleep 1

done
