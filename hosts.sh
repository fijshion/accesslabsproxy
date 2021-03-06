#!/bin/bash

domain="foo.redhat.com prod.foo.redhat.com"
hostline="127.0.0.1 $domain"
filename=/etc/hosts

grep -q "$hostline" "$filename"

if [ $? -ne 0 ]
then
    echo -e "$hostline" | sudo tee -a "$filename" > /dev/null
fi
