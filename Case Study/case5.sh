#!/bin/bash
echo "enter port: "
read port
c=$(netstat -anp | grep ":$port")
if [ "x$c" = "x" ]
then
 /etc/init.d/apache2 restart
 echo "server restarted"
else
 echo "server already running"
fi
path=$(realpath "$0")
if ! (crontab -l | grep -Fxq "*/1 * * * * $path");
then
 crontab -l | { cat; echo "*/1 * * * * $path"; } | crontab
 echo "script added"
fi
 
