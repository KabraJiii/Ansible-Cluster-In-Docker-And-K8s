FROM alpine:latest

# Install necessary packages
RUN apk update && \
    apk add --no-cache openssh vim python3 openrc

# Configure SSH to allow root login and password authentication
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

# Generate host SSH keys
RUN ssh-keygen -A

# Set root password
RUN echo "root:admin" | chpasswd

# Expose SSH port
EXPOSE 22

# Start SSH daemon when container starts
CMD ["/usr/sbin/sshd", "-D"]
