#!/bin/bash

#Simple ping sweeper to check if ip addresses in a subnet are on. Can be customized by changing the range of the sequence.

read -p "Please enter the first three bytes of you ip address: " SUBNET

for ip in $(seq 1 254); do
	ping -c 1 $SUBNET.$ip
done	
