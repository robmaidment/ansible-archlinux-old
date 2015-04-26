FROM ansible/ubuntu14.04-ansible:stable

ADD ansible-archlinux /etc/ansible
ADD ansible-archlinux/.vagrant /root/
WORKDIR /etc/ansible
RUN export ANSIBLE_HOST_KEY_CHECKING=False
RUN ansible-playbook -vvvv archlinux.yml -i inventory
