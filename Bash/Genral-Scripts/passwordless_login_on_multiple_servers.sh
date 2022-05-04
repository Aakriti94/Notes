#!/usr/bin/env bash

# Taking publick Key as input to $1
# Please use the command-line arguemnt --> $1 with starting and ending ""
# Eg: "inputvalue"
# echo "$1"

# $2 --> File with IP address of all servers

for x in `cat "$2"`
do
  echo "$1" | ssh aemuser@$x "cat > /tmp/remotefile.txt"
done

## Logic
