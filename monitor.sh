#!/bin/bash

org="b6824e"
dtype="DnxDevice"
did="dnxDevice1"
apikey="a-b6824e-ltp0wdw6ib"
token="sakTi)UDn37Kps(iL+"

mosquitto_sub -h $org.messaging.internetofthings.ibmcloud.com -t "iot-2/type/+/id/+/mon" -i "a:$org:$apikey" -P "$token" -u "$apikey" -q 1 
