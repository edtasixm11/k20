#! /bin/bash
# Kserver
# @edt ASIX M11-SAD Curs 2020-2021

cp /opt/docker/krb5.conf /etc/krb5.conf
bash /opt/docker/auth.sh
/usr/bin/ssh-keygen -A
cp /opt/docker/sshd_config /etc/ssh/sshd_config
cp /opt/docker/ssh_config /etc/ssh/ssh_config

kadmin -p admin -w kadmin -q "ktadd -k /etc/krb5.keytab host/sshd.edt.org"


#cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
#cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
#cp /opt/docker/nslcd.conf /etc/nslcd.conf
#cp /opt/docker/system-auth /etc/pam.d/system-auth 
#dnf -y install pam_krb5-2.4.8-6.el7.x86_64.rpm

# crear usuaris local01--03 (IP+AP)
for user in local01 local02 local03
do
  useradd $user
  echo -e "$user\n$user\n" | passwd --stdin $user  
done	

# crear usuaris kuser01..06 (IP) el passwd està a kerberos
for user in kuser{01..06}
do
  useradd $user
done
 


