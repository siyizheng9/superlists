Provisioning a new site
=======================

## Required packages:

* nginx
* Python 3.6
* virtualenv + pip
* Git

eg, on Ubuntu:

    sudo add-apt-repository ppa:fkrull/deadsnakes
    sudo apt-get install nginx git python36 python3.6-venv

## Ngin Virtual Host config

* see nginx.template.conf
* replace SITENAME with, e.g., superlists-staging.me

## Systemd service

* see gunicorn-systemd.template.service
* replace SITENAME with e.g., superlists-staging.me
* replace SEKRIT with email password

## Folder structure

Assume we have a user account at /home/username