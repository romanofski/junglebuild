#!/bin/bash
set -xe

cd /junglebuild && ansible-playbook playbooks/workstation/main.yml
