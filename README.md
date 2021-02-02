# Kerberos
## @edt ASIX M11-SAD Curs 2020-2021

Podeu trobar les imatges docker al Dockehub de [edtasixm11](https://hub.docker.com/u/edtasixm11/)

Podeu trobar la documentació del mòdul a [ASIX-M11](https://sites.google.com/site/asixm11edt/)

ASIX M11-SAD Escola del treball de barcelona

### Authenticació

 * **edtasixm11/k19:kserver** servidor kerberos detach. 
   Crea els usuaris pere, pau (admin), jordi, anna, 
   marta, marta/admin i julia. Assignar-li el nom 
   de host: *kserver.edt.org*

 * **edtasixm11/k19:khost** host client de kerberos.
   Simplement amb eines kinit, klist i kdestroy (no pam).
   El servidor al que contacta s'ha de dir *kserver.edt.org*.



