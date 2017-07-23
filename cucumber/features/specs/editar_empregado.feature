 # language: pt
 # encode: UTF-8
 
Funcionalidade: Editar funcionario
  Eu como um administrador do sistema
  Quero poder alterar os dados do funcionario 
  Para manter meus dados atualizados´(teste)

Contexto:
  Dado que eu esteja logado na home OrangeHRM
  E cadastrar um funcionario

@editarEmpregado @regressao
Cenario: Editar funcionario sucesso
  Dado que eu esteja na home do funcionario
  Quando edito dados do funcionario
  Entao altero dados com sucesso
