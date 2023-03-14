# lxe22109

#!/bin/sh

podman run -it --rm --security-opt label=disable --userns=keep-id:uid=1000,gid=1000 --volume /var/data/aluno/lxe22109/:/home/aluno/lxe22109 docker.io/hmarcondes/dev_space:latest

fuse2fs -o fakeroot /dev/sdc2 /mountpoint
