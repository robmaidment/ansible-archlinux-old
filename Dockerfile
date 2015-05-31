FROM ansible/ubuntu14.04-ansible:stable
ENV ANSIBLE_HOST_KEY_CHECKING false
ADD . /etc/ansible
WORKDIR /etc/ansible
RUN chmod 400 .vagrant/machines/default/virtualbox/private_key &&\
 ansible-playbook archlinux.yml -i inventory
