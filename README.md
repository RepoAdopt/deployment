# deployment

## Configuration windows pc

```
go to C:\Windows\System32\drivers\etc and open hosts in admin mode
```

```
add the following lines:
127.0.0.1 repoadopt.graphql
127.0.0.1 repoadopt.authentication
```

## Go to docker-compose.yml pulled from this repo

```
docker-compose up
```

Make sure docker desktop or an alternative is running on your system!
