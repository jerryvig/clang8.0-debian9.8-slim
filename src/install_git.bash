#!/bin/bash

# Download the latest git source xz tarball from kernel.org
cd /tmp
/usr/bin/wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.21.0.tar.xz
/usr/bin/unxz git-2.21.0.tar.xz
/bin/tar xvf git-2.21.0.tar
cd git-2.21.0
export CC=/usr/bin/clang
/usr/bin/make configure
./configure --without-tcltk --prefix=/usr/local
/usr/bin/make NO_TCLTK=YesPlease
/usr/bin/apt remove -y git
/usr/bin/make install

