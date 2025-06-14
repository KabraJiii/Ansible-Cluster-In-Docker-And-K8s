FROM alpine:latest

# Install Ansible and required tools
RUN apk update && \
    apk add --no-cache ansible-core vim openssh sshpass

# Create Ansible directories and default config
RUN mkdir -p /etc/ansible && \
    touch /etc/ansible/hosts && \
    ansible-config init --disabled > /etc/ansible/ansible.cfg

# Default command to check ansible version
CMD ["sh", "-c", "tail -f /dev/null"]
