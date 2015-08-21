#!/bin/bash
set -xe
# in case the playbook fails, run a shell so we can debug.
trap /usr/bin/bash EXIT

cd /junglebuild && ansible-playbook playbooks/workstation/main.yml
