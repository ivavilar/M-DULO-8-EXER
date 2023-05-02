            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o usuário "livre@gmail.com"
            E a senha "m&m2023"
            Então devo acessar meu carrinho de compras e visualizar os pedidos

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu digitar o usuário "livre@gmail.com.br"
            E a senha "m&mjjff"
            Então "Usuário ou senha inválidos"

            Esquema do Cenário: Visualizar meus pedidos
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <carrinho> com os pedidos

            Exemplos:
            | usuario           | senha     | mensagem  |
            | "livre@gmail.com" | "m&m2023" | "pedidos" |
            | "Joana@gmail.com" | "g&g2023" | "pedidos" |


