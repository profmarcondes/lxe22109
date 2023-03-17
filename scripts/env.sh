#!/bin/sh

USR=aluno
VDIR=/var/data/${USR}
IMAGE=hmarcondes/dev_space:latest

function pod_start () {
	podman run -it --rm --security-opt label=disable \
		--userns=keep-id:uid=1000,gid=1000 \
		--volume ${VDIR}:/home/${USR} \
	docker.io/${IMAGE}
}

function setImage () {
	IMAGE=$1
}
