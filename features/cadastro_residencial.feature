#language:pt

    Funcionalidade: Cadastro Dados Residencial
        Sendo cliente, desejo cadastrar meus dados residenciais para ter acesso ao aplicativo

    Contexto:
        Dado que estou na tela de dados residenciais


   Esquema do Cenario: Cadastro dados residenciais com sucesso
        Dado que tenho os dados "<cep>"
        E "<numero>"
        Quando toco em avancar
        Entao sou direcionado para tela de cadastro senha

        Exemplos:
        | cep      | numero | 
        | 04474000 | 213    |


    Esquema do Cenario: Cadastro dados residencial com falha
        Dado que tenho os dados "<cep>" e "<nome_rua>"
        E "<numero>" e "<complemento>"
        E "<cidade>", "<estado>" e "<bairro>"
        Quando toco em avancar
        Entao visualizo mensagem de "<alerta>"

        Exemplos:
        | cep      | nome_rua        | numero | complemento | cidade    | estado | bairro             | alerta            |
        |          | Rua dos aniquis | 213    | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | CEP invalido      |
        | 0447400  | Rua dos aniquis | 213    | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | CEP invalido      |
        | 04474000 |                 | 213    | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | Rua invalida      |
        | 04474000 | Rua             | 213    | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | Rua invalida      |
        | 04474000 | Rua dos aniquis |        | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | Numero invalido   |
        | 04474000 | Rua dos aniquis | 213    | Ap 20       | Sao Paulo | SP     | Jd Santa Terezinha | CPF invalido      |