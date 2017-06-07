# tripleo-virt-quickstart

All of the following commands should be run directly on the system that will
host the libvirt vm's as a non-root user with sudo access.

These steps have been tested on CentOS 7.

Setup
-----

Ensure the CentOS installation is up to date:

    yum -y update

If necessary, create a non-root user, and become that user:

    useradd -G wheel centos
    passwd centos # Set a password
    su - centos

Install git if needed:

    yum -y install git

Installation
------------

Use any non-root user (e.g., the user created above):

    git clone https://github.com/slagle/tripleo-virt-quickstart.git
    cd tripleo-virt-quickstart
    ./bootstrap.sh

Running
-------
    ./run.sh
