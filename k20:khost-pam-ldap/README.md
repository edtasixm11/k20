# K20 Kerveros host client

@edt ASIX M11-SAd Curs 2020 - 2021

### Autenticació


 * **edtasixm11/k20:khost** host client de kerberos. Simplement amb eines kinit, klist i 
   kdestroy (no pam). El servidor al que contacta s'ha de dir *kserver.edt.org*.


Accedir al kserver de AWS:

 * posar a /etc/hosts l'adreça IP del servidor

'''
A.B.C.D kserver.edt.org kserver ldap.edt.org ldap
'''

```
docker run --rm --name khost.edt.org -h khost.edt.org --net 2hisix -it edtasixm11/k20:khost-pam-ldap
```
