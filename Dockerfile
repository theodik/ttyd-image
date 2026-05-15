FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    ttyd \
    zsh \
    tmux \
    curl \
    wget \
    git \
    unzip \
    sudo \
    build-essential \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/zsh -u 1000 theodik && \
    echo "theodik ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

EXPOSE 7681

CMD ["ttyd", "-W", "-u", "1000", "-g", "1000", "tmux", "new-session", "-A", "-s", "main"]