Dado("que estou na tela de cadastro de Senha") do
    steps(%"E que estou na tela de dados residenciais
        E que tenho os dados '04474000'
        E informo o '10'
        E toco em continuar")

        @page_cad_senha = Cadastro_Senha.new
        @page_cad_senha.screen
end

Dado("que tenho a {string}") do |senha|
    @page_cad_senha.send 'register_password_et', senha
end

Dado("a {string}") do |confirma_senha|
    @page_cad_senha.send 'register_confirm_password_et', confirma_senha
end
  
Quando("toco em finalizar") do
    @page_cad_senha.click 'bt_send_register'
end
  
Entao("visualizo popup de {string}") do |mensagem|
    alert = @page_cad_senha.find_id 'alertTitle'
    expect(alert.text).to eql mensagem
end