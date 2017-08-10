#!/bin/sh

nginx -g "daemon off;"
while true
do
        inotifywait -e create,modify /etc/certs/*
        echo "Reloading Nginx Configuration"
        nginx -s reload
done
