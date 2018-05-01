#language:pt

Funcionalidade: Cadastro Senha

Contexto:
    Dado que estou na tela de cadastro de Senha

    Esquema do Cenario: Cadastro senha com sucesso
        Dado que tenho "<senha>"
        E "<confirmacao_senha>"
        Quando toco em avancar
        Entao visualizo popup de cadastro com sucesso

        Exemplos:
        | senha    | confirmacao_senha | 
        | Teste123 | Teste123          |

    Esquema do Cenario: Falha no cadastro senha
        Dado que tenho a "<senha>"
        E "<confirmacao_senha>"
        Quando toco em avancar
        Entao visualizo mensagem de "<alerta>"

        Exemplos:
        | senha    | confirmacao_senha | alerta            |
        | Teste123 | Teste             | Senha não confere |
        | Teste123 |                   | Senha invalida    |
        | 1        | 1                 | Senha invalida    |
        | 12       | 12                | Senha invalida    |
        | 123      | 123               | Senha invalida    |
        | 1234     | 1234              | Senha invalida    |
        | 12345    | 12345             | Senha invalida    |
        | 1234567  | 1234567           | Senha invalida    |
        |          | Teste123          | Senha invalida    |
        |          |                   | Senha invalida    |