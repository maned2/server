
```

docker create --name temp-rust docker-rust
docker cp temp-rust:/usr/src/app/. ./data

docker compose up -d

```

0 6 * * * cd /var/server/games/rust/docker && /usr/bin/docker compose down && /usr/bin/docker compose up -d --build
0 1 3 9 * cd /var/server/games/rust/docker && /usr/bin/docker compose down && /usr/bin/docker compose up -d --build