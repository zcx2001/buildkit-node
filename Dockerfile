FROM node:24.22.3-trixie-slim

COPY --from=moby/buildkit:v0.35.0 /usr/bin/buildctl /usr/local/bin/buildctl

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
      ca-certificates && \
    rm -rf /var/lib/apt/lists/*