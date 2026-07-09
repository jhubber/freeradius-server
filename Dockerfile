FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        freeradius \
        freeradius-mysql \
        freeradius-utils \
        ca-certificates \
        tzdata \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 1812/udp 1813/udp

CMD ["freeradius", "-X"]
