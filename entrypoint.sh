#!/bin/bash
set -e

if [ ! -z "${CRON_TIME}" ]; then
    echo "Setting up cron job"
    cat <(crontab -l) <(echo "${CRON_TIME} /pg_backup_rotated.sh") | crontab -
    crond -l 2 -f
fi

exec "$@"
