#! /bin/bash

/opt/docker/install.sh && echo "Ok install"

/sbin/krb5kdc
/sbin/kadmind -nofork

