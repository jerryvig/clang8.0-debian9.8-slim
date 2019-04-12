#!/bin/bash

echo "deb http://apt.llvm.org/stretch/ llvm-toolchain-stretch-8 main" >> /etc/apt/sources.list
echo "deb-src http://apt.llvm.org/stretch/ llvm-toolchain-stretch-8 main" >> /etc/apt/sources.list
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
/usr/bin/apt update
/usr/bin/apt install -y clang-8
/usr/bin/apt install -y lldb-8
/usr/bin/apt install -y lld-8
/usr/bin/apt install -y libc++-8-dev libc++abi-8-dev
ln -s /usr/bin/clang-8  /usr/bin/clang
ln -s /usr/bin/clang++-8  /usr/bin/clang++
