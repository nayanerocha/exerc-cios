#language: pt

Funcionalidade: Configuração de produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois adicionar ao carrinho

Cenário: Selecionar cor, tamanho e quantidade
Dado que estou na página de um produto
Quando eu seleciono a cor
E seleciono o tamanho
E seleciono a quantidade
Então devo conseguir adicionar o produto ao carrinho

Cenário: Limite máximo de produtos
Quando estou na página de um produto
E tento adicionar ao carrinho uma quantidade maior do que 10 unidades
Então deve exibir uma mensagem de erro
E não deve permitir a adição de mais de 10 unidades ao carrinho

Cenário: Limpar o carrinho
Quando estou na página de um produto
E determinei cor, tamanho e quantidade
Quando clico no botão Limpar
Então as configurações de cor, tamanho e quantidade devem voltar ao estado original


Funcionalidade: Login para visualizar meus pedidos
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Cenário: Inserir dados válidos e fazer login
Dado que estou na tela de login
Quando insiro um usuario valido
E insiro uma senha valida
E clico em "Entrar"
Então deve redirecionar para a tela de checkout

Cenário: Inserir dados inválidos
Quand Dado que estou na tela de login
Quando insiro um usuario valido
E uma senha inválida
E clico em "Entrar"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


Funcionalidade: Concluir cadastro para finalizar compra
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Cenário: Dados válidos e campos obrigatórios preenchidos
Quando estou na tela de cadastro
E insiro um e-mail com formato inválido
Então o sistema deve exibir uma mensagem de erro

Cenário: Ao dizer campos vazios
Quando estou na tela de cadastro
E preencho todos os campos obrigatórios <nome>, <sobrenome>, <email>, <senha>
E clico em "Cadastrar"
Então o sistema deve exibir mensagem de sucesso

Cenário: Ao dizer campos vazios
Quando estou na tela de cadastro
E não preencho todos os campos obrigatórios <nome>, <sobrenome>, <email>, <senha>
E clico em "Cadastrar"
Então o sistema deve exibir mensagem de alerta

Esquema do Cenário: Validação do cadastero
Dado que estou na tela de cadastro
Quando preencho os campos obrigatórios <nome>, <sobrenome>, <email>, <senha>
E clico em Cadastrar
Então o sistema deve exibir <mensagem>

Exemplos:
|nome|sobrenome|email|senha|mensagem
|"nayane"|"rocha"|"nayanerocha@gmail.com"|"senha123"|"Cadastro realizado com sucesso"|
|"ana"|"campos"|anacampos@.com"|"abc456"|"Formato de e-mail inválido"|
|"pedro"|"pascal"|              |"senhap987"| "Preencha todos os campos obrigatórios"|
|"java"|"silva"|"java@gmail.com"|           | "Preenche todos os campos obrigatórios"|
