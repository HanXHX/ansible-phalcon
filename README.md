Phalcon PHP Ansible role for Debian
===================================

[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-HanXHX.phalcon-blue.svg)](https://galaxy.ansible.com/HanXHX/phalcon/) [![Build Status](https://travis-ci.org/HanXHX/ansible-phalcon.svg?branch=master)](https://travis-ci.org/HanXHX/ansible-phalcon)

Install [Phalcon](https://phalconphp.com/) module on Debian Jessie.

Requirements
------------

You should install with PHP with another role.

Role Variables
--------------

- `phalcon_legacy`: (boolean) Uses Phalcon 2. Set false (default) to use latest version.
- `phalcon_version`: (optional) Specify phalcon version. If //null// (default), it installs latest version on repository.
- `phalcon_package` : (string) Package name. If you don't set this variable, this role parses you PHP cli to find the best package (be careful if you want PHP5 and your main php command links to PHP7).

About PHP7
----------

PHP7 + Phalcon is not ready yet for Debian Jessie (see: https://github.com/phalcongelist/packagecloud/issues/5). But this role is ready to support this (with PHP from [Dotdeb](https://www.dotdeb.org)).

When you want to install Phalcon for PHP7, you must set `phalcon_package` to //php7.0-phalcon//.

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
  - [phalcon-debian](https://github.com/HanXHX/phalcon-debian) for legacy version
  - [packagecloud](https://github.com/phalcongelist/packagecloud) for official version

Author Information
------------------

- Twitter: https://twitter.com/hanxhx_
