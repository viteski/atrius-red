#!/bin/bash

token=$1 gateway=$2 file=$3

curl --write-out '%{http_code}\n' \
     --header "Authorization: Bearer ${token}" \
     -F legacy=@"${file}" \
     "https://api.buildingos.com/gateways/${gateway}/data"

