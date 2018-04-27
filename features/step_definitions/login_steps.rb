Dado("que estou na tela de login") do
    steps (%"E que estou na tela inicial
            E clico em ja sou cadastrado")

    @page_login = Login.new
    @page_login.screen
end
  
Dado("possuo os seguintes dados {string} e {string}") do |cpf, senha|
    @page_login.send 'login_cpf_et', cpf
    @page_login.send 'login_password_et', senha
end

Então("tenho acesso a tela de selecao de cartao") do
    @page_card = Select_Card.new
    @page_card.screen
end
  
Quando("toco em acessar") do
    @page_login.click ('bt_login')
end
  
Entao("vejo a {string}") do |mensagem|    
    @page_login.find_byXpath mensagem
    binding.pry
end

Entao("vejo popup com o texto {string}") do |mensagem|
    @page_login.find_byXpath mensagem
    binding.pry
end