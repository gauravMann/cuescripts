#!/bin/bash

cip=$(ssh dm1 bash find_host.sh $1 | awk '{print $1}')
echo $cip
host=$(cat ~/.ssh/config| grep -B 3 $cip | grep "Host" | head -1 | awk {'print $2'})
echo $host
ssh $host -t "bash dbash.sh $1"
