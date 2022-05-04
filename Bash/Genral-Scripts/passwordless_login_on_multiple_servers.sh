# Script to setup passwordless ssh login for multiple remote servers

## Assumption: You already have the a psswordless login setup
# then only you can setup passwordless login for other users

# Server Name: Mention the servername where the script is stored
# User name: aakriti
# Date: 4th May, 2022

# ToDo: Make a file with al IP adress in different lines
# Eg:
# 52.8.27.138
# 54.177.233.24
# 54.177.334.24

#!/usr/bin/env bash

# Taking public Key as input to $1
# Please use the command-line arguemnt --> $1 with starting and ending ""
# Eg: "input value"
# echo "$1"

# $2 --> File with IP address of all servers

for x in `cat "$2"`
do
  echo "$1" | ssh aemuser@$x "cat > /tmp/remotefile.txt"
done
