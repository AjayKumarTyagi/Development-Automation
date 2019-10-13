#!/bin/bash
# Schedule this file in crontab
echo "@daily 1 script.daily101 find $dir -type f -name "*.tar" -mtime +2 -exec rm -f {} \;">>/etc/anacrontab
