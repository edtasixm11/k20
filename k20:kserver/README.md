# K20 Kerveros server

@edt ASIX M11-SAd Curs 2020 - 2021

### Autenticació

 * **edtasixm11/k20:kserver** Servidor kerberos detach. Crea els usuaris pere pau (admin), 
   jordi, anna, marta, marta/admin i julia. Assignar-li el nom de host: kserver.edt.org

'''
docker run --rm --name kserver.edt.org -h kserver.edt.org --net 2hisix -d edtasixm11/k20:kserver
'''

