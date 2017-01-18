# Copyright (c) 2017 0xFireball
# All rights reserved.
# Contributors:
# Nihal Talur (0xFireball) <0xFireball@outlook.com>

FROM codenvy/ubuntu_jre

MAINTAINER 0xfireball@outlook.com

# Install Crystal
RUN curl https://dist.crystal-lang.org/apt/setup.sh | sudo bash
RUN sudo apt-get install crystal -y

ENV LANG C.UTF-8
EXPOSE 5000
LABEL che:server:5000:ref=dot.net.server che:server:5000:protocol=http
WORKDIR /projects
CMD tail -f /dev/null
