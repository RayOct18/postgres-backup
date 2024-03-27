# postgres-backup

```bash
TAG=16.1-alpine
docker build --build-arg TAG=${TAG} -t postgres-backup:${TAG} .
```

[Postgresql WIKI - Automated_Backup_on_Linux](https://wiki.postgresql.org/wiki/Automated_Backup_on_Linux)