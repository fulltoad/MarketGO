#language:pt

Funcionalidade: Login
    Validacao de login com sucesso e falha
    Acesso a opcao de cadastro e esqueci minha senha

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
        | cpf         | senha | mensagem       |
        | 2284666981  | abc   | CPF inválido   |
        | 22846669812 | abc   | CPF inválido   |
        |             |       | CPF inválido   |
        | 65467863118 |       | Senha inválida |
        | 65467863118 | abc   | Senha inválida |

    Cenario: Acesso a Esqueci minha senha
        Quando que toco em Esqueci minha senha
        Entao sou direcionado para tela de recuperacao de senha

    Cenario: Acesso a cadastro
        Quando toco em Cadastrar
        Entao sou direcionado para tela de cadastro

    Cenario: Logout na tela de selecao de cartao
        Dado que fiz o login com "<cpf>" e "<senha>"
        E estou na tela selecao de cartao
        Quando toco em sair
        Entao sou direcionado para tela de login

    Cenario: Logout na tela de Ajustes
        Dado que fiz o login com "<cpf>" e "<senha>"
        E estou na tela selecao de cartao
        E seleciono o cartao ja cadastrado
        Quando acesso tela de ajustes
        E toco em sair
        E confirmo a saida da conta
        Entao sou direcionado para tela de login