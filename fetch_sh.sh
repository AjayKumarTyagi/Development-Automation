#!/bin/bash
# Schedule this file in crontab as:
# 00 10 */7 * 4 <task>
dir=$(find /home/ajay/ -name dev)
find $dir -type f -name "*.sh" -exec tar -zcf file.tar {} \;
