FROM postgres:15.1-alpine3.16

ARG UID=1000
ARG GID=1000
RUN addgroup -g $GID -S user && adduser -u $UID -H -S user -G user

RUN apk add --update --no-cache xz zstd

USER user
ENTRYPOINT ["psql"]
CMD ["--help"]
