#!/bin/bash
sudo service memcached stop
memcached -d
memcached -s/tmp/memcached.sock -d
memcached -p5000 -d
nosetests --version
nosetests --with-coverage --cover-package=bmemcached
exit $?
