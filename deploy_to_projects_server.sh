#!/bin/sh

PROJECTS_MACHINE=ubuntu@168.75.66.176
SSH_PUB_FILE=~/.ssh/projects.key.pub

scp -r -i ${SSH_PUB_FILE} * ${PROJECTS_MACHINE}:~/drt-minecraft-server/
ssh -o StrictHostKeyChecking=no -i ${SSH_PUB_FILE} ${PROJECTS_MACHINE} "cd /home/ubuntu/drt-minecraft-server && bash run_server.sh"
