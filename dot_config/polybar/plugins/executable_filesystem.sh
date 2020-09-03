#!/bin/bash

filesystem_free=$(btrfs filesystem usage / 2> /dev/null | awk -F ' ' '/Free/ { print $3 }')

echo "$filesystem_free"
