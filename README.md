Phalcon PHP Ansible role for Debian
===================================

[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-HanXHX.phalcon-blue.svg)](https://galaxy.ansible.com/list#/roles/5212) [![Build Status](https://travis-ci.org/HanXHX/ansible-phalcon.svg?branch=master)](https://travis-ci.org/HanXHX/ansible-phalcon)

Install [Phalcon](https://phalconphp.com/) module on Debian Jessie. Note: Debian Stretch and PHP7 will come later.

Requirements
------------

You should install with PHP with another role.

Role Variables
--------------

`phalcon_version`: (optional) specify phalcon version

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

If you have issues with packaging. Please check [phalcon-debian](https://github.com/HanXHX/phalcon-debian).

Author Information
------------------

- Twitter: https://twitter.com/hanxhx_
