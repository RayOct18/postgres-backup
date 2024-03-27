#!/bin/bash
set -e

if [ ! -z "${CRON_TIME}" ]; then
    echo "Setting up cron job"
    cat <(crontab -l) <(echo "${CRON_TIME} /pg_backup_rotated.sh 2>&1 >> /var/log/cron.log") | crontab -
    crond
    tail -f /dev/null
fi

exec "$@"
