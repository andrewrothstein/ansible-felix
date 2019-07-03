andrewrothstein.felix
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-felix.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-felix)

Installs [Felix](https://github.com/projectcalico/felix) from Project Calico

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.felix
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
