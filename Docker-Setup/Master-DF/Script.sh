apk update
apk add ansible-core
apk add openssh sshpass vim
mkdir -p /etc/ansible/
touch /etc/ansible/hosts
ansible-config init --disabled > /etc/ansible/ansible.conf
