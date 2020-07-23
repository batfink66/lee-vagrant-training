#!/bin/bash

# update ubuntu but exclude kernel packages
apt-mark hold linux-image-generic linux-headers-generic
apt-get update -y

# Tools
apt-get install -y nano git unzip screen netcat telnet openssh-server
