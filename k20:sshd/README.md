# K20 SSHS erver

@edt ASIX M11-SAd Curs 2020 - 2021

### Autenticació


 * **edtasixm11/k20:sshd** ervidor SSH amb PAM amb autenticació AP de kerberos i IP de ldap. 
   El servidor kerberos al que contacta s'ha de dir *kserver.edt.org*. El servidor ldap 
   s'anomena *ldap.edt.org*. Aquest host es configura amb *authconfig*. Generat a partir de
   la imatge edtasixm11/k20:khost-pam-ldap que és un host amb PAM kerb5+ldap. Se li ha afegit:

```
 *  el servei sshd (cal generar les claus de host)
 *  el keytab contenint el princpial host/sshd.edt.org@EDT.ORG
 *  la configuració sshd_config per permetre connexions kerberitzades
 *  la configuració ssh_config per pode fer test des del propi host 
```

Accedir al kserver de AWS:

 * posar a /etc/hosts l'adreça IP del servidor

'''
A.B.C.D kserver.edt.org kserver ldap.edt.org ldap
'''

```
docker run --rm --name sshd.edt.org -h sshd.edt.org -p 22:2022 --net 2hisix -d edtasixm11/k20:sshd
```
