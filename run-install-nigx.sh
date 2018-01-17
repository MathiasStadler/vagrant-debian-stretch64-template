#!/bin/bash
export ANSIBLE_HOST_KEY_CHECKING=False
export ANSIBLE_CONFIG=$(pwd)/ansible.cfg
# verbose mode ansible-playbook -vvvv

echo "PWD => $(pwd)"

## --check  = dryrun

ansible-playbook  --private-key=.vagrant/machines/default/virtualbox/private_key \
-u vagrant \
-i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory provisioning/install_nigx.yml