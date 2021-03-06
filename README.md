Archlinux installation for my daily use
=======================================

Ansible files for installation of Archliunx with my dev env installed.
Description of my archliunx env can be found [here (in french)][1]

Before start
------------

I used [packer-arch][2] to create a vagrant box ready to build with ansible.
I just edit `arch-template.json` to update `iso_url` and `iso_checksum` to a newer version of [archlinux][3]

For testing use the vagrant file to mount a test machine on virtualbox `vagrant up`. If your prefer vmware you'll have to create the box with packer-arch.


Ansible setup
-------------

These is a work in progress. You can test my archlinux env with vagrant user.
To test checkout these repo and execute `vagrant up` && `ansible -i inventory archlinux.yml`

Instruction on Windows
----------------------

You have to use Boot2Docker + vagrant.
First download the [Vagrantfile][4] and `vagrant up` the archlinux base vm.
Then ssh into boot2docker, clone the repo, link the Dockerfile out of the repo.
`cd ansible-archlinux && docker build .`


Screenshot
----------

![capture](https://github.com/tyjak/ansible-archlinux-old/blob/master/archeevbox.png)


[1]: http://tyjak.github.io/Archlinux.html
[2]: https://github.com/elasticdog/packer-arch
[3]: https://mirrors.kernel.org/archlinux/iso/
[4]: https://github.com/tyjak/ansible-archlinux-old/raw/master/Vagrantfile
