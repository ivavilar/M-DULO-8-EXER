            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu escolho um produto
            E seleciono a cor, tamanho e quantidade
            Então o produto deve ser adicionado ao carrinho

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu escolho até 10 produtos
            E Seleciono a cor, tamanho e quantidade
            Então o produto deve ser adicionado ao carrinho

            Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original
            Quando eu clico no carrinho
            E clico na opção limpar carrinho
            Então o carrinho deve ficar vazio

            Esquema do Cenário: configurar diferentes produtos no mesmo carrinho
            Quando eu selecionar o <produto>
            E selecionar a <cor>
            E selecionar o <tamanho>
            Então deve o produto deve ser  <adicionado> ao carrinho

            Exemplos:
            | Produto   | cor        | tamanho | carrinho   |
            | "Camisa"  | "Azul"     | "m"     | adicionado |
            | "Calça"   | "Verde"    | "P"     | adicionado |
            | "Vestido" | "Rosa"     | "G"     | adicionado |
            | "Saia"    | "Vermelha" | "P"     | adicionado |

