#!/bin/sh

source /opt/qnib/consul/etc/bash_functions.sh
wait_for_srv consul-http

echo Launching the openHAB runtime...

DIRNAME=/opt/openhab
exec "${DIRNAME}/runtime/karaf/bin/karaf" "${@}"
