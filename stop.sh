#!/bin/bash
networksetup -setwebproxystate "Wi-fi" off
networksetup -setsecurewebproxystate "Wi-fi" off
git config --global --unset http.proxy
git config --global --unset https.proxy
/opt/cisco/anyconnect/bin/vpn -s disconnect
