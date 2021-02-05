#! /bin/bash

/opt/docker/install.sh && echo "Ok install"

/sbin/nscd && echo "Ok nslcd"
/sbin/nslcd && echo "Ok nscd"

/bin/bash
