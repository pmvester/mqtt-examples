#!/bin/bash

mosquitto_sub -h qc65wr.messaging.internetofthings.ibmcloud.com -t "iot-2/type/+/id/+/evt/+/fmt/+" -i "a:qc65wr:a-qc65wr-bplwfjbxvp" -P "DHxH-pH*unNwN2jCaQ" -u "a-qc65wr-bplwfjbxvp" -q 1 
