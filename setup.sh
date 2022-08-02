#!/bin/bash
set -euxo pipefail

readonly OGRE_VERSION=$1

echo 'Etc/UTC' > /etc/timezone

apt-get update
apt-get install --no-install-recommends --quiet --yes \
    curl gnupg2 locales lsb-release wget tzdata

export UBUNTU_VERSION=`lsb_release -cs`
locale-gen en_US en_US.UTF-8
export LANG=en_US.UTF-8
ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime

wget http://packages.osrfoundation.org/gazebo.key -O - | apt-key add -
echo  "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable $UBUNTU_VERSION main" > /etc/apt/sources.list.d/gazebo-stable.list

apt-get update
DEBIAN_FRONTEND=noninteractive \

apt-get install --no-install-recommends --quiet --yes \
  build-essential \
  cmake \
  git \
  pkg-config \
  python3-pip \
  vim

pip3 install --upgrade \
  colcon-common-extensions==0.2.1

if [ "$OGRE_VERSION" == "2.2" ]; then
  apt install --yes libogre-next-dev
fi

if [ "$OGRE_VERSION" == "2.3" ]; then
  apt install --yes libogre-next-2.3-dev
fi

if [ "$OGRE_VERSION" == "both" ]; then
  apt install --yes libogre-next-dev libogre-next-2.3-dev
fi

