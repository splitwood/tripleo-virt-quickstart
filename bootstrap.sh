#!/bin/bash

set -eux

[ -d tripleo-quickstart ] || git clone https://git.openstack.org/openstack/tripleo-quickstart
[ -d tripleo-quickstart-extras ] || git clone https://git.openstack.org/openstack/tripleo-quickstart-extras

tripleo-quickstart/quickstart.sh --install-deps
tripleo-quickstart/quickstart.sh --bootstrap
