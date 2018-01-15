#!/bin/bash


# from here
# https://stackoverflow.com/questions/1204629/how-do-i-get-the-default-gateway-in-linux-given-the-destination

WLAN_INTERFACE= $(ip route get $(dig +short google.com | tail -1)|awk '{print $5}')
