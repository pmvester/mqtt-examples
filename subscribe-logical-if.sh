#!/bin/bash

apikey="a-s8sb6o-cqz4iq63ek"
deviceId="MV_pseudoDevice1"
logicalInterfaceId="5d8dd6a1d04f73001eb67d96"
org="s8sb6o"
token="Q*soLh0u7V6ed0XkLh"
typeId="MV_PseudoDevice"

topic="iot-2/type/$typeId/id/$deviceId/intf/$logicalInterfaceId/evt/state"

mosquitto_sub -v -h $org.messaging.internetofthings.ibmcloud.com -t $topic -i "a:$org:$apikey" -P "$token" -u "$apikey" -q 1 
