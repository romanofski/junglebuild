#
# Docker image to test play book changes
#
FROM fedora:latest
RUN yum install -y \
  ansible \
  sudo \
  make && yum clean all

RUN adduser -d /home/rjoost -m rjoost
ENV HOME /home/rjoost
RUN echo "%wheel  ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
RUN usermod -G wheel rjoost

VOLUME ["/junglebuild"]
ADD runplaybook.sh /runplaybook.sh
USER rjoost
ENTRYPOINT ["/runplaybook.sh"]
