#language:pt

@login
Funcionalidade: Login
    Validacao de login com sucesso e falha

    Contexto:
        Dado que estou na tela de login

    Cenario: Login com sucesso
        Dado possuo os seguintes dados "65467863118" e "Teste123"
        Quando toco em acessar
        Então tenho acesso a tela de selecao de cartao

    Esquema do Cenario: Usuario nao cadastrado
        Dado possuo os seguintes dados "22846669813" e "Teste123"
        Quando toco em acessar
        Então vejo popup com o texto "<mensagem>"

        Exemplos:
        | mensagem                                  |
        | Não foi possível autenticar este usuário. |


    Esquema do Cenario: Falha no login
        Dado possuo os seguintes dados "<cpf>" e "<senha>"
        Quando toco em acessar
        Entao vejo a "<mensagem>"

        Exemplos:
        | cpf         | senha | mensagem                        |
        | 2284666981  | abc   | CPF inválido                    |
        | 22846669812 | abc   | CPF inválido                    |
        |             |       | CPF inválido                    |
        | 65467863118 |       | Senha inválida                  |
        | 65467863118 | abc   | Senha inválida                  |