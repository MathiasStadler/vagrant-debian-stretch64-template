# vagrant-debian-stretch64-template
vagrant debain stretch64 template  


#used docker with ansible
http://docs.ansible.com/ansible/latest/guide_docker.html

# install on local maschine

# install ansible 2.4.xx
https://www.cyberciti.biz/faq/how-to-install-and-configure-latest-version-of-ansible-on-ubuntu-linux/


# install dockerpy
- https://docker-py.readthedocs.io/en/stable/
sudo pip install docker

# install docker-compose
# The docker_service module also requires docker-compose
sudo pip install 'docker-compose>=1.7.0'



# jenkins docker install follow
https://github.com/chrismeyersfsu/provision_docker



https://www.vagrantup.com/docs/boxes/base.html



https://vtorosyan.github.io/ansible-docker-vagrant/


http://docs.ansible.com/ansible/latest/intro_installation.html

https://github.com/geerlingguy/ansible-vagrant-examples/blob/master/docker/Vagrantfile


#vagrant no plainpassword
http://ermaker.github.io/blog/2015/11/18/change-insecure-key-to-my-own-key-on-vagrant.html



https://github.com/geerlingguy/ansible-role-jenkins


https://www.vagrantup.com/docs/provisioning/ansible_intro.html




https://github.com/geerlingguy/ansible-role-docker/blob/master/tasks/setup-Debian.yml

http://docs.ansible.com/ansible/latest/playbooks_best_practices.html



## install docker
https://github.com/geerlingguy/ansible-role-docker/blob/master/tasks/main.yml

## ansible consept of roles
http://docs.ansible.com/ansible/latest/playbooks_reuse_roles.html

# using roles 
http://docs.ansible.com/ansible/latest/playbooks_reuse_roles.html#using-roles



# crate role structur of ansible role
ansible-galaxy init <name of role>
ansible-galaxy init docker



# vagrant config from yaml
https://www.simonholywell.com/post/2016/02/intelligent-vagrant-and-ansible-files/

# become: yes
https://stackoverflow.com/questions/39183100/define-become-yes-per-role-with-ansible



## run ansible in vagrant manually
- http://docs.ansible.com/ansible/latest/guide_vagrant.html


# see stdout from ansible task
https://serverfault.com/questions/537060/how-to-see-stdout-of-ansible-commands
https://github.com/ansible/ansible/blob/devel/lib/ansible/plugins/callback/minimal.py


# use local ansible.cfg 
https://sysadmincasts.com/episodes/45-learning-ansible-with-vagrant-part-2-4

# version of installes ansible version
dpkg -l |grep ansible
dpkg -l ansible

dpkg-query -L ansible