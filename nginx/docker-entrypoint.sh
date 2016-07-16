#!/bin/bash
set -e

touch /var/log/cron.log

crond
tail -f /var/log/cron.log &
exec $@
