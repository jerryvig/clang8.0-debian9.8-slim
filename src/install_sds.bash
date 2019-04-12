#!/bin/bash

# Download the latest git source xz tarball from kernel.org
cd /tmp
/usr/bin/wget https://github.com/antirez/sds/archive/2.0.0.tar.gz
/bin/tar xzvf 2.0.0.tar.gz
cd sds-2.0.0
/usr/bin/clang -c -Wall -std=c99 -pedantic -O2 -fpic sds.c
/usr/bin/clang -shared -o libsds.so sds.o
cp libsds.so /usr/local/lib
cp sds.h /usr/local/include/
cd /tmp
rm -rf sds-2.0.0
rm -f 2.0.0.tar.gz
