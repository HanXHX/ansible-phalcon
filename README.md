Phalcon PHP Ansible role for Debian
===================================

[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-HanXHX.phalcon-blue.svg)](https://galaxy.ansible.com/HanXHX/phalcon/) [![Build Status](https://travis-ci.org/HanXHX/ansible-phalcon.svg?branch=master)](https://travis-ci.org/HanXHX/ansible-phalcon)

Install [Phalcon Framework](https://phalconphp.com/) on Debian.

Supported OS :

| OS              |
| --------------- |
| Debian Jessie   |
| Debian Stretch  |
| Debian Buster   |

Please note, Debian buster packages are not officialy provided by Phalcon. This role uses Stretch packages for this case.

Requirements
------------

You should install with PHP (+CLI) with another role/task.

Role Variables
--------------

- `phalcon_version`: (optional) Specify phalcon version. If //null// (default), it installs latest version on repository.
- `phalcon_package` : (string) Package name. If you don't set this variable, this role parses your PHP cli to find the best package (be careful if you have many PHP version on your system).

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      pre_tasks:
         - apt: pkg="{{ item }}"
           with_items: ['php7.0-cli', 'php7.0-fpm']
      roles:
         - { role: HanXHX.phalcon }

License
-------

GPLv2

Issues
------

If you have issues with packaging. Please check:
  - [packagecloud](https://github.com/phalcongelist/packagecloud)

Author Information
------------------

- Twitter: https://twitter.com/hanxhx_
