#!/bin/bash
# Schedule this file in crontab as
# */1 * * * * <task>
find /home -type f -name "*.tar" -mtime +2 -exec rm -f {} +
