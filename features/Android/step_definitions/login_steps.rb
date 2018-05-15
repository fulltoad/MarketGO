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
    @page_card = Seleciona_Cartao.new
    @page_card.screen
end
  
Quando("toco em acessar") do
    @page_login.click ('bt_login')
end
  
Entao("vejo a {string}") do |mensagem|    
    alert = @page_login.find_id 'textinput_error'
    expect(alert.text).to eql mensagem
end

Entao("vejo popup com o texto {string}") do |mensagem|
    alert = @page_login.find_id 'message'
    expect(alert.text).to eql mensagem
end

Quando("que toco em Esqueci minha senha") do
    @page_login.click ('main_forgot_pass_bt')
end
  
Entao("sou direcionado para tela de recuperacao de senha") do
    @page_senha = Esqueci_senha.new
    @page_senha.screen
end
  
Entao("sou direcionado para tela de cadastro") do
    @page_cad = Cadastro_Pessoal.new
    @page_cad.screen
end

Dado("que fiz o login com {string} e {string}") do |cpf, senha|

    steps (%"E possuo os seguintes dados '<#{cpf}>' e '#{senha}'
        E toco em acessar")
end
  
Dado("estou na tela selecao de cartao") do
    @page_card.screen
end
  
Quando("toco em sair") do
    @page_card.click 'menu_card_phone'
end
  
Entao("sou direcionado para tela de login") do
    @page_login.screen
end
  
#Dado("seleciono o cartao ja cadastrado") do
#    pending # Write code here that turns the phrase above into concrete actions
#end
  
#Quando("acesso tela de ajustes") do
#    pending # Write code here that turns the phrase above into concrete actions
#end
  
Quando("confirmo a saida da conta") do
    pending # Write code here that turns the phrase above into concrete actions
#   alertTitle = Sair
#   message = Tem certeza que deseja sair?
#   button1 = Sim
#   button2 = Não
end
  