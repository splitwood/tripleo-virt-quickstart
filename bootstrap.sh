#!/bin/bash

git clone https://git.openstack.org/openstack/tripleo-quickstart
git clone https://git.openstack.org/openstack/tripleo-quickstart-extras

tripleo-quickstart/quickstart.sh --bootstrap
