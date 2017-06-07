#!/bin/bash

set -eux

rpm -q git || sudo yum -y install git

function ssh_error {
    echo "ssh as root failed. Make sure you can ssh as root to $(hostname) without being prompted for a password"
    exit 1

}

ssh \
    -o StrictHostKeyChecking=no \
    -o PasswordAuthentication=no \
    root@$(hostname) /bin/echo "ssh as root successful" \
    || ssh_error

[ -d tripleo-quickstart ] || git clone https://git.openstack.org/openstack/tripleo-quickstart
[ -d tripleo-quickstart-extras ] || git clone https://git.openstack.org/openstack/tripleo-quickstart-extras

tripleo-quickstart/quickstart.sh --install-deps
# Technically, running with just --bootstrap is not supported, so after the
# bootstrap is done, the help message is printed
tripleo-quickstart/quickstart.sh --bootstrap || :

echo "Bootstrap Done. Success."
