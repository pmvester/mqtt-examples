#!/bin/bash

apikey="a-s8sb6o-cqz4iq63ek"
logicalInterfaceId="5c28fd28fd684f00274b0ec1"
org="s8sb6o"
thingId="MV_k34"
token="Q*soLh0u7V6ed0XkLh"
typeId="MV_EnvType"

topic1="iot-2/thing/type/$typeId/id/$thingId/intf/$logicalInterfaceId/evt/state"
topic2="iot-2/thing/type/$typeId/id/$thingId/err/data"

mosquitto_sub -v -h $org.messaging.internetofthings.ibmcloud.com -t $topic1 -t $topic2 -i "a:$org:$apikey" -P "$token" -u "$apikey" -q 1 
