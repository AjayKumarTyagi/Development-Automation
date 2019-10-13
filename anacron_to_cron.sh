#!/bin/bash
# Add this file to anacron to schedule job to crontab using anacrontab
crontab -l > mycron.txt
echo "* * * * * find /home/ajay/ -name "*.tar" -type f -exec rm -f {} \;">>mycron.txt
crontab mycron.txt
rm mycron.txt
