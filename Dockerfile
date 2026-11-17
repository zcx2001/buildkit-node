FROM node:24.22.3-trixie-slim

COPY --from=moby/buildkit:v0.35.0 /usr/bin/buildctl /usr/local/bin/buildctl