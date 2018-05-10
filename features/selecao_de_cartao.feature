#language:pt

Funcionalidade: Selecao de cartao
    Sendo cliente, apos efetuar login,
    devo selecionar o cartao que desejo efetuar a consulta
    tambem posso adicionar ou remover cartao

    Contexto:
        Dado que fiz o login

    Cenario: Selecao de cartao
        Entao visualizo meu cartao cadastrado
        Quando seleciono o cartao
        E sou direcionado para a home

    Cenario: Remocao de cartao
        Entao visualizo meu cartao cadastrado
        Quando clico no icone de remover
        E visualizo o popup para confirmar a exclusao
        E toco em Deletar
        Entao visualizo a mensagem "Cartão removido com Sucesso"
        E clico em OK para fechar o popup

    Cenario: Adicao de cartao
        Dado que nao tenho nenhum cartao cadastrado
        Quando toco no botao Adicionar Cartão
        E sou direcionado para tela de adicao de cartao
        Entao informo o "<Teste>" e "<6079960010488532>"
        Quando toco em Salvar cartao
        E vejo a mensagem "Cartão adicionado com Sucesso"
        E clico em OK
