#!/bin/bash
docker run -it -v "${PWD}":/work -v ~/.ansible/roles:/root/.ansible/roles -v ~/.ssh:/root/.ssh:ro \
    --env PY_COLORS='1' \
    --env CONTROL_NODE_PATH="${PWD}" \
    --env ANSIBLE_FORCE_COLOR='1' \
    --rm sukill/ansible:latest ansible-playbook $@
