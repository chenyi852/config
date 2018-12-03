#!/bin/bash

set -ex

LOG=git_compile.log
DL_PATH=/home/$USER/download
APP_PATH=/home/$USER/app
#userbin=/home/$USER/bin

export LD_LIBRARY_PATH=$APP_PATH

CURL_CS=curl-7.59.0.tar.gz
SSL_CS=openssl-1.1.0h.tar.gz
GIT_WEB_CS=v2.16.3.tar.gz
GIT_CS=git-2.16.3.tar.gz

mkdir -p $APP_PATH



cd $DL_PATH

if [ ! -f $CURL_CS ] ; then
	wget https://dl.uxnr.de/mirror/curl/$CURL_CS --no-check-certificate
fi

if [ ! -f $SSL_CS ]; then
	wget https://www.openssl.org/source/$SSL_CS --no-check-certificate
fi

if [ -f $GIT_WEB_CS ] ; then
	mv $GIT_WEB_CS $GIT_CS
fi

if [ ! -f $GIT_CS ]; then
	wget https://github.com/git/git/archive/$GIT_CS --no-check-certificate
fi

tar -xf openssl-1.1.0h.tar.gz 
cd openssl-1.1.0h
./config --prefix=$APP_PATH >$LOG
make -j16 > $LOG
make -j16 install > $LOG
cd ../

tar xf curl-7.59.0.tar.gz 
cd curl-7.59.0
./configure --with-ssl=$APP_PATH/ --prefix=$APP_PATH/ > $LOG
make -j16 > $LOG
make install
ldd $APP_PATH/lib/libcurl.so.4.5.0 
cd ..

tar xf git-2.16.3.tar.gz 
cd git-2.16.3
make configure > $LOG
./configure --prefix=$APP_PATH/ --with-openssl=$APP_PATH/ \
--with-curl=$APP_PATH/ > $LOG
make -j16
make install 
ldd $APP_PATH/libexec/git-core/git-remote-https
