#!/usr/bin/env sh 

PORT="${PORT:-3000}" 

echo "Starting request catcher on port ${PORT}"

while true; do 
   echo "HTTP/1.1 200 OK\nContent-Length: 15\nContent-Type: text/plain;charset=utf-8\n\nrequest caught" | nc -l -p $PORT -s 0.0.0.0
   [ "$?" != "0" ] && break
   printf "\n\n====Completed at $(date)====\n\n"
done
