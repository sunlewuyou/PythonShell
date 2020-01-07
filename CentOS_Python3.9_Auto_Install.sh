#!/usr/bin/env bash

yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel &&
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0a2.tar.xz &&
mkdir -p /usr/local/python3 &&
tar -xvf Python-3.9.0a2.tar.xz &&
cd Python-3.9.0a2 &&
./configure --prefix=/usr/local/python3 &&
make && make install &&
ln -s /usr/local/python3/bin/python3 /usr/local/bin/python3 &&
ln -s /usr/local/python3/bin/pip3 /usr/local/bin/pip3 &&
echo "[global]
index-url = https://pypi.doubanio.com/simple
trusted-host = pypi.doubanio.com" > ~/.pip/pip.conf
pip3 install --upgrade pip &&
cd ..
rm -rf Python-3.9.0a2 Python-3.9.0a2.tar.xz
echo "python3 installed successfullly!"
