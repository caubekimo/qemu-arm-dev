#!/bin/sh
[ ! -d "./source" ] && git clone git://git.qemu-project.org/qemu.git && mv ./qemu ./source

## [ ! -d "./docker" ] && git clone https://github.com/ArturKlauser/gem5-dev.git && mv ./gem5-dev/docker ./ && rm -fr ./gem5-dev

if [[ "$(docker images -q qemu-arm 2> /dev/null)" == "" ]]; then
  docker build -t qemu-arm docker
fi

sleep 1

echo 'To start a qemu-arm container, run the following command.'
echo 'docker run -it -v $PWD:/qemu qemu-arm /bin/bash'


