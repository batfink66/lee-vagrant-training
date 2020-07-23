#!/bin/bash

# update ubuntu but exclude kernel packages
apt-get update -y --exclude=kernel

# Tools
apt-get install -y nano git unzip screen nc telnet openssh-server
