FROM ubuntu:22.04

# Install packages using apt-get
RUN apt-get update \
# Install basic packages
&& DEBIAN_FRONTEND=noninteractive apt-get install -y \
-o Dpkg::Options::="--force-confdef" \
-o Dpkg::Options::="--force-confold" \
# Install build tools
keyboard-configuration bash git bash-completion \
# Install development tools
build-essential \
# Install basic tools
## Sudo
sudo \
## Network tools
iproute2 \
## Download tools
curl wget \
## Editors
vim \
# Clean up
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# Install npm
RUN curl -sL https://deb.nodesource.com/setup_22.x | sudo -E bash - \
&& sudo apt-get install -y nodejs \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

#Add new sudo user
ARG UID
ARG GID
ARG USER_NAME
RUN useradd -m $USER_NAME \
&& echo "$USER_NAME:$USER_NAME" | chpasswd \
&& usermod --shell /bin/bash $USER_NAME \
&& usermod -aG sudo $USER_NAME \
&& mkdir -p /etc/sudoers.d/ \
&& echo "$USER_NAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USER_NAME \
&& chmod 0440 /etc/sudoers.d/$USER_NAME \
&& usermod  --uid $UID $USER_NAME \
&& groupmod --gid $GID $USER_NAME
