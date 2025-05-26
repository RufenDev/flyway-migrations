# Flyway migrations Template

This is a starter template for PostgreSQL Database migrations control with Flyway

## Steps

1. Create the `.env` with these variables:
   
```
POSTGRES_HOST=XXXX
POSTGRES_PORT=XXXX
POSTGRES_DB=XXXX
POSTGRES_USER=XXXX
POSTGRES_PASSWORD=XXXX
```

2. Run the `Dockerfile` or run this project manually with the `redgate/flyway` image:

```bash
docker run --rm -v $(pwd)/SCRIPTS_FOLDER:/flyway/sql -v $(pwd):/flyway/conf redgate/flyway migrate
```
