#!/bin/bash

PORT=${PORT:-4499}

while true
do
  { echo -e "HTTP/1.1 200 OK\r\n\r\n $(fortune | cowsay)"; } | nc -l -p $PORT -q 1;
done
