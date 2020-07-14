#!/bin/bash

# update centos but exclude kernel packages
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen nc telnet
