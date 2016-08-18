#!/bin/bash

ifconfig -a

ADPT_PARAM="eth0"
if [ ! -z "$HOST_ADAPTER" ]; then
  echo "HOST_ADAPTER variable is set, using adapter IP"
  ADPT_PARAM="$HOST_ADAPTER"
fi

REMOTE_HOST=http://`ifconfig $ADPT_PARAM | grep 'inet addr' | cut -d: -f2 | awk '{print $1}'`:5555

export REMOTE_HOST
echo "REMOTE_HOST: $REMOTE_HOST"

./opt/bin/entry_point.sh
