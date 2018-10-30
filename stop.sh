#!/bin/bash
/opt/cisco/anyconnect/bin/vpn -s disconnect
networksetup -setwebproxystate "Wi-fi" off
networksetup -setsecurewebproxystate "Wi-fi" off
