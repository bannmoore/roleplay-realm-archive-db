# Roleplay Realm DB

## Dependencies

- [Docker Desktop](https://docs.docker.com/desktop/)
- [Goose](https://github.com/pressly/goose)

## Commands

Run database:

```sh
docker compose up -d postgres
```

Run migrations:

```sh
./bin/migrate up
```

Create migration:

```sh
./bin/migrate create new_migration_name sql
```