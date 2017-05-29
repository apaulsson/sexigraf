#!/bin/bash
crontabFile="/etc/cron.d/graphite_autopurge"
echo "*/5  *    * * *   root   /usr/bin/find -L /var/lib/graphite/whisper/ -type f \( -name '*.wsp' \) -mtime +45 -exec rm {} \;" >> $crontabFile
service cron reload
