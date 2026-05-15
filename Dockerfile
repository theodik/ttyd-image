FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    ttyd \
    zsh \
    tmux \
    curl \
    wget \
    git \
    unzip \
    build-essential \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

CMD ["ttyd", "-W", "tmux", "new-session", "-A", "-s", "main"]
