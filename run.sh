#!/bin/bash

set -e

echo " install vagrant plugins"
vagrant plugin install vagrant-disksize
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-scp



