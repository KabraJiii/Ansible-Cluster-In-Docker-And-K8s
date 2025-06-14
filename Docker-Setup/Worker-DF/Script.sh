apk update
apk add openssh vim python3 openrc
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
ssh-keygen -A
/usr/sbin/sshd
echo "root:admin" | chpasswd
