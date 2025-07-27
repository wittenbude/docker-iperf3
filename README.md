# docker-iperf3

This project builds a container image for [iperf3](https://iperf.fr).

## Running

```shell
docker run -p 5201:5210/tcp -p 5201:5201/udp ghcr.io/wittenbude/iperf3
```

By default the container will run the iperf3 server.
You can also use the container as an iperf3 client:

```shell
docker run ghcr.io/wittenbude/iperf3 -c <server-address>
```

## Building

```shell
docker build . -t ghcr.io/wittenbude/iperf3
```
