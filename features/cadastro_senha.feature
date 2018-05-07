#language:pt

Funcionalidade: Cadastro Senha
    Sendo cliente, desejo cadastrar meus minha senha para ter acesso ao aplicativo

Contexto:
    Dado que estou na tela de cadastro de Senha

    Esquema do Cenario: Cadastro senha com sucesso
        Dado que tenho a "<senha>"
        E a "<confirmacao_senha>"
        Quando toco em finalizar
        Entao visualizo o popup de "<sucesso>"

        Exemplos:
        | senha    | confirmacao_senha | sucesso       |
        | Teste123 | Teste123          | Tudo certo :) |

#    Esquema do Cenario: Falha no cadastro senha
#        Dado que tenho a "<senha>"
#        E a "<confirmacao_senha>"
#        Quando toco em finalizar
#         Entao visualizo mensagem de "<falha>"

#        Exemplos:
#        | senha    | confirmacao_senha | falha            |
#        | Teste123 | Teste             | Senha não confere |
#        | Teste123 |                   | Senha invalida    |
#        | 1        | 1                 | Senha invalida    |
#        | 12       | 12                | Senha invalida    |
#        | 123      | 123               | Senha invalida    |
#        | 1234     | 1234              | Senha invalida    |
#        | 12345    | 12345             | Senha invalida    |
#        | 1234567  | 1234567           | Senha invalida    |
#        |          | Teste123          | Senha invalida    |
#        |          |                   | Senha invalida    |

    Esquema do Cenario: Usuário já cadastrado
        Dado que tenho a "<senha>"
        E a "<confirmacao_senha>"
        Quando toco em finalizar
        Entao visualizo popup de "<falha>"

        Exemplos:
        | senha    | confirmacao_senha | falha                       |
        | Teste123 | Teste123          | Atenção! | 