#!/bin/bash
read_var() {
  VAR=$(grep $1 $2 | xargs -0)
  IFS="=" read -ra VAR <<< "$VAR"
  echo ${VAR[1]}
}

WINDOWS_NAME=$(read_var WINDOWS_NAME .env)
PROXY_PORT=$(read_var PROXY_PORT .env)
VPN_ADDRESS=$(read_var VPN_ADDRESS .env)

networksetup -setwebproxy "Wi-fi" $WINDOWS_NAME $PROXY_PORT
networksetup -setsecurewebproxy "Wi-fi" $WINDOWS_NAME $PROXY_PORT
/opt/cisco/anyconnect/bin/vpn -s connect $VPN_ADDRESS
