#!/bin/bash

#################################################################

# Author: Manu
# Date: 22/02/2024

# This script outputs the node health

# Version: v1

#################################################################

set -x # debug mode

set -e # exit the script when there is an error

set -o pipefail


echo "Print the disk space"

df -h

echo "Print the memory"

free -g

echo "Print the CPU"

nproc

ps -ef | grep amazon | awk -F " " '{print $2}' 
