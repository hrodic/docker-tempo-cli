FROM golang:1.16-alpine
MAINTAINER "https://github.com/hrodic"

RUN apk add --update --no-cache git
RUN cd /tmp && git clone https://github.com/grafana/tempo.git
RUN cd /tmp/tempo && go build ./cmd/tempo-cli

FROM alpine:latest
WORKDIR /tempo-cli
COPY --from=0 /tmp/tempo/tempo-cli /tempo-cli
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
ENTRYPOINT ["./tempo-cli"]
