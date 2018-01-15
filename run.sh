#!/bin/bash

set -e

sudo apt-get install ansible



echo " install vagrant plugins"
vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-disksize
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-scp



