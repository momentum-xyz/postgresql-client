Smallish container image with postgresql client tools.

To execute postgresql command line tools inside docker or Kubernetes without pulling the whole postgres database docker image.

Alpine based image, with postgresql-client and some other tools installed.

Default entry point is `psql` command, but other tools like `pg_isready` and `pg_dump` are available.

```console
docker run --rm --interactive --tty ghcr.io/momentum-xyz/postgresql-client:latest --host db --user root -p
```
