#!/bin/bash

# iot-2/type/${thingTypeId}/id/$thingId/intf/${logicalInterfaceId}/evt/state

org="s8sb6o"
typeId="MV_EnvType"
thingId="MV_k34"
logicalInterfaceId="5c28fd28fd684f00274b0ec1"
apikey="a-s8sb6o-cqz4iq63ek"
token="Q*soLh0u7V6ed0XkLh"

topic1="iot-2/thing/type/$typeId/id/$thingId/intf/$logicalInterfaceId/evt/state"
topic2="iot-2/thing/type/$typeId/id/$thingId/err/data"

mosquitto_sub -v -h $org.messaging.internetofthings.ibmcloud.com -t $topic1 -t $topic2 -i "a:$org:$apikey" -P "$token" -u "$apikey" -q 1 
