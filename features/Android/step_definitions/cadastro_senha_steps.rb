require 'cpf_faker'
require 'faker'

email = Faker::Superhero.prefix + "_" + Faker::Number.number(3) + "@" + Faker::GameOfThrones.dragon + ".com"
email.gsub(" ", "_").downcase!
celular = "119" + Faker::Number.number(8)
    
Dado("que estou na tela de cadastro de Senha") do
    steps(%"E que estou na tela de dados residenciais
        E que tenho os dados '04474000'
        E informo o '10'
        E toco em continuar")

        @page_cad_senha = Cadastro_Senha.new
        @page_cad_senha.screen
end

Dado ("que estou na tela de cadastro de Senha usando CPF já cadastrado no sistema") do
    steps (%"E que estou na tela de Cadastro Dados Pessoais
        E que tenho os dados '<65467863118>' e '<Bruno Melo>'
        E '<#{email}>' e '<#{email}>'
        E tambem '<01081986>' e '<#{celular}>'
        E 'Masculino'
        E toco em avancar")

        @page_cad_res = Cadastro_Residencial.new
        @page_cad_res.screen

    steps (%"E que tenho os dados '04474000'
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