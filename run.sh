#!/bin/sh
[ ! -d "./source" ] && git clone git://git.qemu-project.org/qemu.git && mv ./qemu ./source

if [[ "$(docker images -q qemu-arm 2> /dev/null)" == "" ]]; then
  docker build -t qemu-arm docker
fi

sleep 1

echo 'To start a qemu-arm container, run the following command.'
echo 'docker run -it -v $PWD:/qemu qemu-arm /bin/bash'


