#!/usr/local/bin/dumb-init /bin/bash

sleep 2

source /opt/qnib/consul/etc/bash_functions.sh
wait_for_srv consul-http

echo Launching the openHAB runtime...

cd ${OPENHAB_HOME}
/opt/openhab/runtime/karaf/bin/karaf server
