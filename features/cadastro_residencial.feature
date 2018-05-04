#language:pt

    Funcionalidade: Cadastro Dados Residencial
        Sendo cliente, desejo cadastrar meus dados residenciais para ter acesso ao aplicativo

    Contexto:
        Dado que estou na tela de dados residenciais


   Esquema do Cenario: Cadastro dados residenciais com sucesso
        Dado que tenho os dados "<cep>"
        E informo o "<numero>"
        Quando toco em continuar
        Entao sou direcionado para tela de cadastro senha

        Exemplos:
        | cep      | numero | 
        | 04474000 | 213    |


    Esquema do Cenario: Cadastro dados residencial com falha
        Dado que tenho os dados residenciais "<cep>" e "<nome_rua>"
        E "<numero>" com "<complemento>"
        E tambem "<cidade>", "<estado>" e "<bairro>"
        Quando toco em continuar
        Entao visualizo mensagem de "<alerta>"

        Exemplos:
        | cep      | nome_rua        | numero | complemento | cidade    | estado | bairro             | alerta            |
        |          | Rua dos aniquis | 213    | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | CEP inválido.      |
#        | 0447400  | Rua dos aniquis | 213    | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | CEP inválido.      |
#        | 04474000 |                 | 213    | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | Rua inválido.      |
#        | 04474000 | Rua             | 213    | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | Rua inválido.      |
#        | 04474000 | Rua dos aniquis |        | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | Numero inválido.   |
#        | 04474000 | Rua dos aniquis | 213    | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha |      |