# docker-tempo-cli
Dockerized tempo cli

Docker hub: https://hub.docker.com/r/hrodic/tempo-cli

## Documentation
https://grafana.com/docs/tempo/latest/cli/

## Usage

### Docker Compose
```
tempo-cli:
    image: hrodic/tempo-cli:latest
```

docker-compose run tempo-cli query http://tempo:3100 your-trace-id

