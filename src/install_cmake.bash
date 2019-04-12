#!/bin/bash

# Download the latest Linux x86_64 build of CMake from Kitware's github repository.
cd /opt
/usr/bin/wget https://github.com/Kitware/CMake/releases/download/v3.14.2/cmake-3.14.2-Linux-x86_64.tar.gz
/bin/tar xvf cmake-3.14.2-Linux-x86_64.tar.gz
echo 'export PATH=$PATH:/opt/cmake-3.14.2-Linux-x86_64/bin' >> /root/.bashrc
source /root/.bashrc
/usr/bin/which cmake
