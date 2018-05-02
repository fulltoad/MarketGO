#language:pt

Funcionalidade: Cadastro 
    Contexto:
        Dado que estou na tela de Cadastro Dados Pessoais

    Esquema do Cenario: Cadastro dados pessoais com sucesso
        Dado que tenho os dados "<cpf>" e "<nome_completo>"
        E "<email>" e "<confirmacao_email>"
        E tambem "<data_nascimento>" e "<cel>"
        E "<sexo>"
        Quando toco em avancar
        Entao sou direcionado para tela de dados residenciais

        Exemplos:
        | cpf         | nome_completo | email            | confirmacao_email | data_nascimento | cel         | sexo      |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | Feminino  |

    Esquema do Cenario: Cadastro dados pessoais com falha
        Dado que tenho os dados "<cpf>" e "<nome_completo>"
        E "<email>" e "<confirmacao_email>"
        E tambem "<data_nascimento>" e "<cel>"
        E "<sexo>"
        Quando toco em avancar
        Entao visualizo mensagem de "<alerta>"

        Exemplos:
        | cpf         | nome_completo | email            | confirmacao_email | data_nascimento | cel         | sexo      | alerta              |
        | 2284666981  | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | masculino | CPF inválido        |
        | 22846669812 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | masculino | CPF inválido        |
        |             | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | masculino | CPF inválido        |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | masculino | CPF ja cadastrado   |
        | 22846669813 |               | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | masculino | Nome inválido       |
        | 22846669813 | bruno         | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | masculino | Nome inválido       |
        | 22846669813 | br            | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | masculino | Nome inválido       |
        | 22846669813 | bruno melo    | brunom@teste     | brunom@teste      | 01081986        | 11985559970 | masculino | Email inválido      |
        | 22846669813 | bruno melo    | brunom@com       | brunom@com        | 01081986        | 11985559970 | masculino | Email inválido      |
        | 22846669813 | bruno melo    | @teste.com       | @teste.com        | 01081986        | 11985559970 | masculino | Email inválido      |
        | 22846669813 | bruno melo    | brunomteste.com  | brunomteste.com   | 01081986        | 11985559970 | masculino | Email inválido      |
        | 22846669813 | bruno melo    |                  |                   | 01081986        | 11985559970 | masculino | Email inválido      |
        | 22846669813 | bruno melo    | brunom@teste.com | brunor@teste.com  | 01081986        | 11985559970 | masculino | Emails não conferem |
        | 22846669813 | bruno melo    | brunom@teste.com |                   | 01081986        | 11985559970 | masculino | Email inválido      |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 41081986        | 11985559970 | masculino | Data inválida       |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01181986        | 11985559970 | masculino | Data inválida       |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01082020        | 11985559970 | masculino | Data inválida       |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 010886          | 11985559970 | masculino | Data inválida       |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  |                 | 11985559970 | masculino | Data inválida       |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 10985559970 | masculino | Celular inválido    |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11185559970 | masculino | Celular inválido    |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 1198555997  | masculino | Celular inválido    |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        |             | masculino | Celular inválido    |