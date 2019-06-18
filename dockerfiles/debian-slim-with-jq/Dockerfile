FROM debian:9.5-slim

RUN apt-get update \
 && apt-get install -y \
      jq \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
