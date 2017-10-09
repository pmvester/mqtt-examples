#!/bin/bash

org="mqnl6k"
dtype="MyDeviceType"
did="myDevice"
apikey="a-mqnl6k-r7qrijpra6"
token="@9uP!aGDxe7b16(cmS"

mosquitto_sub -h $org.messaging.internetofthings.ibmcloud.com -t "iot-2/type/+/id/+/evt/+/fmt/+" -i "a:$org:$apikey" -P "$token" -u "$apikey" -q 1 
