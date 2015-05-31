FROM ansible/ubuntu14.04-ansible:stable
WORKDIR /etc/ansible
RUN git clone https://github.com/tyjak/ansible-archlinux .
RUN chmod 400 .vagrant/machines/default/virtualbox/private_key
ENV ANSIBLE_HOST_KEY_CHECKING false
RUN ansible-playbook archlinux.yml -i inventory
