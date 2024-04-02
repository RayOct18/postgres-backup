# postgres-backup

## Usage
You need to setup `pg_backup.config` first.
### Backup
```bash
docker run --rm --network host --env-file pg_backup.config -v $(pwd)/pg_backup.config:/pg_backup.config -v $(pwd)/backups:/backups postgres-backup:16.1-alpine /pg_backup.sh
```

### Rotate Backup
```bash
docker run --rm --network host --env-file pg_backup.config -e CRON_TIME="00 16 * * *" -v $(pwd)/pg_backup.config:/pg_backup.config -v $(pwd)/backups:/backups postgres-backup:16.1-alpine
```

## Build Docker Image
```bash
TAG=16.1-alpine
docker build --build-arg TAG=${TAG} -t postgres-backup:${TAG} .
```

## References
[Postgresql WIKI - Automated_Backup_on_Linux](https://wiki.postgresql.org/wiki/Automated_Backup_on_Linux)