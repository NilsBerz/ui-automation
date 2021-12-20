#!/usr/bin/env bash

# Read input variables
COMPONENT=$1
STATUS=$2

echo $STATUS

# Default message
MESSAGE=""$COMPONENT" failed :no_entry:"
if [ $STATUS = 0 ]; then
    MESSAGE=""$COMPONENT" passed :white_check_mark:"
fi

# Send notification
curl -X POST \
  https://discord.com/api/webhooks/922256645390762046/u0_yT2JJeqoa09w3VZRPVvLHcTVzyQPZmcV8-40wLIdOotMr5R-Q0MC4giKdRV2Zaj9U \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
	"content":"'"$MESSAGE"'"
}'
