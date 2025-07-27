FROM alpine AS builder

RUN apk add build-base

WORKDIR /work/iperf
COPY iperf .

ENV DESTDIR=/work/build
RUN ./configure && make && make install


FROM alpine

COPY --from=builder /work/build/ /

RUN adduser -D -H -u 5201 iperf3
USER iperf3:iperf3

EXPOSE 5201/tcp 5201/udp
ENTRYPOINT ["/usr/local/bin/iperf3"]
CMD ["--server"]
