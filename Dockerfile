FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      curl \
      git \
      build-essential \
      ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

