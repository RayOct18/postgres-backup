ARG TAG
FROM postgres:$TAG

COPY ./*.sh *.config /
RUN chmod +x /*.sh

ENTRYPOINT [ "/entrypoint.sh" ]
