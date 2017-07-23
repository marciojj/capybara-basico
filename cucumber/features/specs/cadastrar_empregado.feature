 # language: pt
 # encode: UTF-8

Funcionalidade: Cadastrar funcionario
  Eu como um administrador do sistema
  Quero poder cadastrar um funcionario 
  Para melhor controle dos dados

@cadastrarFuncionario @regressao
Cenario: Cadastro empregado sucesso
  Dado que eu esteja logado na home OrangeHRM
  Quando cadastrar um funcionario
  Entao funcionario cadastrado com sucesso
