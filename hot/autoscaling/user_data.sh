#!/bin/bash

hostname=$(hostname)
ip_addr=$(hostname -I | xargs)
output="Hello, world! This request was served by ${hostname} (${ip_addr})."

while true; do
    echo -e "HTTP/1.1 200 OK\r\n\r\n${output}\r" | sudo nc -q0 -l -p 80
done
