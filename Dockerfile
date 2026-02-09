FROM debian:stable-slim

RUN apt-get update && apt-get install -y \
    vim vim-runtime \
    util-linux \
    cvs \
    build-essential \
    gdb \
    tree \
    file \
    less \
    ca-certificates \
    locales \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /penguinpanthers

CMD ["/bin/bash"]
