#
# Docker image to test play book changes
# 
# You'll need to copy your ssh key first in order to run it.
#
# HACK: Currently the user is hard coded.
#
FROM fedora:latest
RUN yum install -y\
        sudo\
        openssh-server\
        git
RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

RUN adduser -m rjoost
RUN echo -e "newpass\nnewpass" | (passwd --stdin rjoost)
RUN echo "%wheel  ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
RUN usermod -G wheel rjoost

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
