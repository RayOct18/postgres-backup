ARG TAG
FROM postgres:$TAG

COPY ./entrypoint.sh ./pg_* /
RUN chmod +x /*.sh

ENTRYPOINT [ "/entrypoint.sh" ]
