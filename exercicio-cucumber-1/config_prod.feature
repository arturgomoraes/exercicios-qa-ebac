# language: pt

Funcionalidade: Configuração de produto para compra
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que o cliente acessou a página de produto

  Cenário: Configurar produto com sucesso
    Quando selecionar a cor "Azul"
    E selecionar o tamanho "M"
    E informar a quantidade "2"
    E clicar no botão "Adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho

  Cenário: Validar obrigatoriedade dos campos de configuração
    Quando não selecionar a cor do produto
    E selecionar o tamanho "G"
    E informar a quantidade "1"
    E clicar no botão "Adicionar ao carrinho"
    Então deve ser exibida a mensagem "Selecione a cor do produto"

  Cenário: Limitar quantidade máxima de produtos por venda
    Quando selecionar a cor "Preto"
    E selecionar o tamanho "P"
    E informar a quantidade "11"
    E clicar no botão "Adicionar ao carrinho"
    Então deve ser exibida a mensagem "Quantidade máxima permitida é 10 produtos"

  Cenário: Limpar configurações do produto
    Quando selecionar a cor "Vermelho"
    E selecionar o tamanho "M"
    E informar a quantidade "3"
    E clicar no botão "Limpar"
    Então os campos cor, tamanho e quantidade devem voltar ao estado original
