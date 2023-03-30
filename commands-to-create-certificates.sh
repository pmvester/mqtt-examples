#!/bin/bash

# http://www.steves-internet-guide.com/creating-and-using-client-certificates-with-mqtt-and-mosquitto/

openssl genrsa -des3 -out ca.key 2048

openssl req -new -x509 -days 1826 -key ca.key -out ca.crt

openssl genrsa -out client.key 2048

openssl req -new -out client.csr -key client.key

openssl x509 -req -in client.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out client.crt -days 360

# mosquitto_pub --cafile ca.crt --cert client.crt --key client.key -d -h 192.168.1.157 -p 8883 -t test -m "hello there"

