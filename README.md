# docker-minergate-cli

Docker image that use the [minergate-cli](https://minergate.com/downloads/console) executable to mine cryptocurrencies

## Steps

**Build the image**

```bash
docker build -t transrian/docker-minergate-cli .
```

**View options availables**

```bash
docker run --rm transrian/docker-minergate-cli --help
```

### Deploy using :

**The docker-compose file**

```bash
docker-compose up -d
```

**The command line**

```bash
docker run -d transrian/docker-minergate-cli --user my.mail@example.org -t 16 --xmr
```
