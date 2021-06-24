#!/bin/bash
docker run -v "${PWD}":/work -v ~/.ansible/roles:/root/.ansible/roles -v ~/.ssh:/root/.ssh:ro --env PY_COLORS='1' --env ANSIBLE_FORCE_COLOR='1' --rm sukill/ansible:latest ansible-playbook $@
