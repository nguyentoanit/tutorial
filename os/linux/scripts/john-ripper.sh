#!/bin/bash
# Install Join the Ripper password cracker on Centos 6
yum install wget gcc tar -y
mkdir /john-ripper
cd /john-ripper
wget http://www.openwall.com/john/j/john-1.8.0.tar.gz
wget http://www.openwall.com/john/j/john-1.8.0.tar.gz.sign
tar xvzf john-1.8.0.tar.gz
cd john-1.8.0/src

make clean linux-x86-64
../run/john --test