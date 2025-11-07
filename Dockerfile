ARG VERSION="2"

LABEL org.opencontainers.image.source = "https://github.com/leopoldlabs/caddypold"

FROM caddy:${VERSION}-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/desec

FROM caddy:${VERSION}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
