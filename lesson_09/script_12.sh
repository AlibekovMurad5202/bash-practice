#!/bin/bash

# simple e-mail checker:

echo "name@host.com" | awk '/^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\.\+]+)\.([a-zA-Z]{2,5})$/ { print $0 }'
echo "name" | awk '/^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\.\+]+)\.([a-zA-Z]{2,5})$/ { print $0 }'
