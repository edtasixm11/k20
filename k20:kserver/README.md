# K20 Kerveros server

@edt ASIX M11-SAd Curs 2020 - 2021

### Autenticació

 * **edtasixm11/k20:kserver** Servidor kerberos detach. Crea els usuaris pere pau (admin), 
   jordi, anna, marta, marta/admin i julia. Assignar-li el nom de host: kserver.edt.org


Per engegar a dins de AWS:
  *  posar-li la propagació de port -p 88:88 -p 464:749 -p 749:749
  *  obrir els ports al security groups *kerberos*
  *  afgir en el client al seu /etc/hosts la IP de AWS

'''
docker run --rm --name kserver.edt.org -h kserver.edt.org --net 2hisix -p 88:88 -p 464:464 -p 749:749 -d edtasixm11/k20:kserver
'''

