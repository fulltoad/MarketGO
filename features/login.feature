#language:pt

Funcionalidade: Login
    Sendo cliente, desejo efetuar o login para ter acesso aos meus dados
    Tambem posso fazer o logout para sair da conta e proteger meus dados
    
    Contexto:
        Dado que estou na tela de login

    Cenario: Login com sucesso
        Dado possuo os seguintes dados "65467863118" e "Teste123"
        Quando toco em acessar
        Então tenho acesso a tela de selecao de cartao

    #Necessario ajuste de validacao de CPF existente na base
    #CPF não pode estar na base
    Esquema do Cenario: Usuario nao cadastrado
        Dado possuo os seguintes dados "<cpf>" e "Teste"
        Quando toco em acessar
        Então vejo popup com o texto "<mensagem>"

        Exemplos:
        | cpf           | senha | mensagem                                  |
       # | 00000000000 | senha | Não foi possível autenticar este usuário. |
        | 65467863118   | abc   | Não foi possível autenticar este usuário. |

    Esquema do Cenario: Falha no login
        Dado possuo os seguintes dados "<cpf>" e "<senha>"
        Quando toco em acessar
        Entao vejo a "<mensagem>"

        Exemplos:
        | cpf         | senha | mensagem        |
        | 2284666981  | abc   | CPF inválido.   |
        | 22846669812 | abc   | CPF inválido.   |
        |             |       | CPF inválido.   |
        | 65467863118 |       | Senha inválida  |

    Cenario: Acesso a Esqueci minha senha
        Quando que toco em Esqueci minha senha
        Entao sou direcionado para tela de recuperacao de senha

    Cenario: Logout na tela de selecao de cartao
        Dado que fiz o login com "65467863118" e "Teste123"
        E estou na tela selecao de cartao
        Quando toco em sair
        Entao sou direcionado para tela de login

    Cenario: Logout na tela de Ajustes
        Dado que fiz o login com "65467863118" e "Teste123"
        E estou na tela selecao de cartao
        E seleciono o cartao ja cadastrado
        Quando acesso tela de ajustes
        E toco em sair
        E confirmo a saida da conta
        Entao sou direcionado para tela de login