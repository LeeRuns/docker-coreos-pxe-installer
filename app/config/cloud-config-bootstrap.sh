#!/bin/bash

set -e

# curl -O http://stable.release.core-os.net/amd64-usr/633.1.0/coreos_production_image.bin.bz2

# Fetch cloud-config
until curl -O http://%(server_ip)s/cloud-config.yml; do sleep 2; done

# Install coreos
sudo coreos-install -d /dev/sda -c cloud-config.yml

sudo reboot