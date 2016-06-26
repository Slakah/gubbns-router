#!/bin/bash
set -e

$@
touch /etc/letsencrypt/.restored
touch /var/log/cron.log
cron
exec tail -f /var/log/cron.log
