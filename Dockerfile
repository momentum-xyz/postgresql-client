FROM alpine:3.17.0

ARG UID=1000
ARG GID=1000
RUN addgroup -g $GID -S user && adduser -u $UID -H -S user -G user

RUN apk add --update --no-cache postgresql-client xz zstd bash

USER user
ENTRYPOINT ["psql"]
CMD ["--help"]
