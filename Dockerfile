FROM debian:9.8-slim

RUN /usr/bin/apt -y update
RUN /usr/bin/apt install -y wget
RUN /usr/bin/apt install -y gnupg2
RUN /usr/bin/apt install -y nano
RUN /usr/bin/apt install -y mlocate

WORKDIR /tmp
COPY src/ /tmp

RUN /bin/bash install_clang.bash

CMD ["/bin/bash"]
