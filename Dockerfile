FROM debian:9.8-slim

RUN /usr/bin/apt -y update
RUN /usr/bin/apt install -y wget
RUN /usr/bin/apt install -y gnupg2
RUN /usr/bin/apt install -y nano
RUN /usr/bin/apt install -y mlocate

WORKDIR /tmp
COPY src/ /tmp

RUN /bin/bash install_clang.bash
RUN /bin/bash install_cmake.bash

RUN apt install -y make
RUN apt install -y zlib1g-dev
RUN apt install -y autoconf
RUN apt install -y gettext
RUN apt install -y git

RUN /bin/bash install_git.bash

CMD ["/bin/bash"]
