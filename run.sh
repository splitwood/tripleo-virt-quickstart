#!/bin/bash

set -eux

~/.quickstart/bin/ansible-playbook \
    quickstart.yml \
    -e @config.yaml \
    -M tripleo-quickstart/library \
    -e virthost=$(hostname) \
    -e non_root_user=$(whoami) \
    -e undercloud_user=stack \
    -e ssh_user=$(whoami) \
    -e working_dir=$HOME \
