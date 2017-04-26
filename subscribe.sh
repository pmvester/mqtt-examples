#!/bin/bash

org="qc65wr"
dtype="MyDeviceType"
did="myDevice"
apikey="a-qc65wr-bplwfjbxvp"
token="DHxH-pH*unNwN2jCaQ"

mosquitto_sub -h $org.messaging.internetofthings.ibmcloud.com -t "iot-2/type/+/id/+/evt/+/fmt/+" -i "a:$org:$apikey" -P "$token" -u "$apikey" -q 1 
