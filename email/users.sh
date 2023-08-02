#!/bin/bash

useradd -c 'kennedy' -m -s /bin/false kennedy
echo "kennedy:123456"|chpasswd

useradd -c 'richard' -m -s /bin/false richard
echo "richard:123456"|chpasswd
