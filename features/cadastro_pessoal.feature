#language:pt

Funcionalidade: Cadastro 
        Sendo cliente, desejo cadastrar meus dados pessoais para ter acesso ao aplicativo

    Esquema do Cenario: Cadastro dados pessoais com sucesso
        Dado que estou na tela de Cadastro Dados Pessoais
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
        Dado que estou na tela de Cadastro Dados Pessoais
        Dado que tenho os dados "<cpf>" e "<nome_completo>"
        E "<email>" e "<confirmacao_email>"
        E tambem "<data_nascimento>" e "<cel>"
        E "<sexo>"
        Quando toco em avancar
        Entao visualizo mensagem de "<alerta>"

        Exemplos:
        | cpf         | nome_completo | email            | confirmacao_email | data_nascimento | cel         | sexo      | alerta              |
        | 2284666981  | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | Masculino | CPF inválido        |
        | 22846669812 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | Masculino | CPF inválido        |
        |             | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | Masculino | CPF inválido        |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | Masculino | CPF ja cadastrado   |
        | 22846669813 |               | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | Masculino | Nome inválido       |
        | 22846669813 | bruno         | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | Masculino | Nome inválido       |
        | 22846669813 | br            | brunom@teste.com | brunom@teste.com  | 01081986        | 11985559970 | Masculino | Nome inválido       |
        | 22846669813 | bruno melo    | brunom@teste     | brunom@teste      | 01081986        | 11985559970 | Masculino | Email inválido      |
        | 22846669813 | bruno melo    | brunom@com       | brunom@com        | 01081986        | 11985559970 | Masculino | Email inválido      |
        | 22846669813 | bruno melo    | @teste.com       | @teste.com        | 01081986        | 11985559970 | Masculino | Email inválido      |
        | 22846669813 | bruno melo    | brunomteste.com  | brunomteste.com   | 01081986        | 11985559970 | Masculino | Email inválido      |
        | 22846669813 | bruno melo    |                  |                   | 01081986        | 11985559970 | Masculino | Email inválido      |
        | 22846669813 | bruno melo    | brunom@teste.com | brunor@teste.com  | 01081986        | 11985559970 | Masculino | Emails não conferem |
        | 22846669813 | bruno melo    | brunom@teste.com |                   | 01081986        | 11985559970 | Masculino | Email inválido      |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 41081986        | 11985559970 | Masculino | Data inválida       |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01181986        | 11985559970 | Masculino | Data inválida       |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01082020        | 11985559970 | Masculino | Data inválida       |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 010886          | 11985559970 | Masculino | Data inválida       |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  |                 | 11985559970 | Masculino | Data inválida       |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 10985559970 | Masculino | Celular inválido    |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 11185559970 | Masculino | Celular inválido    |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        | 1198555997  | Masculino | Celular inválido    |
        | 22846669813 | bruno melo    | brunom@teste.com | brunom@teste.com  | 01081986        |             | Masculino | Celular inválido    |

        Cenario: Acesso a cadastro
            Dado que estou na tela de login
            Quando toco em Cadastrar
            Entao sou direcionado para tela de cadastro