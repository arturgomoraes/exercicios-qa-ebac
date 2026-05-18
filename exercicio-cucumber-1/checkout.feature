# language: pt

Funcionalidade: Cadastro para finalizar compra
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que o cliente acessou a tela de checkout

  Cenário: Finalizar cadastro com dados obrigatórios preenchidos
    Quando preencher todos os campos obrigatórios marcados com asterisco
    E informar um e-mail válido
    E clicar no botão "Finalizar cadastro"
    Então o cadastro deve ser concluído com sucesso

  Cenário: Validar e-mail em formato inválido
    Quando preencher os campos obrigatórios
    E informar o e-mail "cliente@invalido"
    E clicar no botão "Finalizar cadastro"
    Então deve ser exibida a mensagem "Formato de e-mail inválido"

  Cenário: Validar tentativa de cadastro com campos vazios
    Quando deixar campos obrigatórios em branco
    E clicar no botão "Finalizar cadastro"
    Então deve ser exibida a mensagem "Preencha os campos obrigatórios"
