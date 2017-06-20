Phalcon PHP Ansible role for Debian
===================================

[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-HanXHX.phalcon-blue.svg)](https://galaxy.ansible.com/HanXHX/phalcon/) [![Build Status](https://travis-ci.org/HanXHX/ansible-phalcon.svg?branch=master)](https://travis-ci.org/HanXHX/ansible-phalcon)

Install [Phalcon](https://phalconphp.com/) on Debian.

Supported OS :

| OS              | PHP 5.6 | PHP 7.0 | PHP 7.1 |
| --------------- | ------- | ------- | ------- |
| Debian Jessie   | Yes     | Yes     | Yes     |
| Debian Stretch  | No      | Yes     | Yes     |

Requirements
------------

You should install with PHP (+CLI) with another role/task.

Role Variables
--------------

- `phalcon_version`: (optional) Specify phalcon version. If //null// (default), it installs latest version on repository.
- `phalcon_package` : (string) Package name. If you don't set this variable, this role parses you PHP cli to find the best package (be careful if you have many PHP version on your system).

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
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
