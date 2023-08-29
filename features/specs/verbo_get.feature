#language: pt
@get
Funcionalidade: Realizar consulta no portal vr

Eu, validar JSON retornado
pelo serviço que possui a chave “typeOfEstablishment” 

@executa_get
Cenário: Validar Resposta GET

  Dado que eu faça um GET no endpoint vrpat
  Então o retorno dele será o servico que possui a chave typeOfEstablishment