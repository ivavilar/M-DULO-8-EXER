            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que eu tenha itens no carrinho de compras da EBAC-SHOP

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando digitar eu todos os campos obrigatórios
            E salvar o cadastro
            Então devo aparecer ser encaminhado para a página "finalizar compras"

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu digitar o email "livre123.com.br"
            Então deve aparecer uma mensagem de erro "email inválido"

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
            Quando meu cadsatro estiver incompleto com campos vazios
            E for tentar salvar o cadastro
            Então deve aparecer uma mensagem de alerta "há campos em branco"

            Esquema do Cenário: Finalizar múltiplos cadastros
            Dado que o <email> seja válido
            E todos os campos estejam <preenchidos>
            Então deve finalizar meu cadastro e <finalizar compra>

            Exemplos:
            | email             | preenchidos       | finalizar compra      |
            | "livre@gmail.com" | "todosos campos"  | "carrinho de compras" |
            | "Joana@gmail.com" | "todos os campos" | "carrinho de compras" |