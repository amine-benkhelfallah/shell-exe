#!/bin/bash
sudo apt-get remove protfpd-core
sudo apt-get autoremove proftpd-core
sudo apt-get purge proftpd-core
sudo apt-get autoremove --purge proftpd-core
