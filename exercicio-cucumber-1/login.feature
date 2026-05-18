# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que o cliente acessou a tela de login

  Esquema do Cenário: Validar autenticação do usuário
    Quando informar o usuário <usuario>
    E informar a senha <senha>
    E clicar no botão "Entrar"
    Então o sistema deve <resultado>

    Exemplos:
      | usuario           | senha    | resultado                                      |
      | cliente@ebac.com  | teste123 | direcionar para a tela de checkout             |
      | cliente@ebac.com  | invalida | exibir a mensagem "Usuário ou senha inválidos" |
      | invalido@ebac.com | teste123 | exibir a mensagem "Usuário ou senha inválidos" |
