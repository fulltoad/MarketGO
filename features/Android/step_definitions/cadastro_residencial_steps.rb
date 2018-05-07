require 'cpf_faker'
require 'faker'


cpf = Faker::CPF.numeric
email = Faker::GameOfThrones.house + Faker::GameOfThrones.city + "@" + Faker::GameOfThrones.dragon + ".com"
celular = "119" + Faker::Number.number(8)
binding.pry

Dado("que estou na tela de dados residenciais") do
    steps (%"E que estou na tela de Cadastro Dados Pessoais
        E que tenho os dados '<#{cpf}>' e '<Bruno Melo>'
        E '<#{email}>' e '<#{email}>'
        E tambem '<01081986>' e '<#{celular}>'
        E 'Masculino'
        E toco em avancar")

    @page_cad_res = Cadastro_Residencial.new
    @page_cad_res.screen
end
  
Dado("que tenho os dados {string}") do |cep|
    @page_cad_res.send 'register_cep_et', cep
end

E("informo o {string}") do |numero|
    @page_cad_res.send 'register_numero_et', numero  
end

Dado("que tenho os dados residenciais {string} e {string}") do |cep, nome_rua|
    @page_cad_res.send 'register_cep_et', cep
    @page_cad_res.clear 'register_endereco_et'
    @page_cad_res.send 'register_endereco_et', nome_rua
end

E("{string} com {string}") do |numero, complemento|
    @page_cad_res.send 'register_numero_et', numero
    @page_cad_res.send 'register_complemento_et', complemento
end

Dado("tambem {string}, {string} e {string}") do |cidade, estado, bairro|
    @page_cad_res.clear 'register_estado_et'
    @page_cad_res.send 'register_estado_et', estado
    
    @page_cad_res.clear 'register_cidade_et'    
    @page_cad_res.send 'register_cidade_et', cidade

    @page_cad_res.clear 'register_bairro_et'
    @page_cad_res.send 'register_bairro_et', bairro
end

Quando("toco em continuar") do 
    @page_cad_res.scroll
    @page_cad_res.click ('bt_next_password')
end

Entao("sou direcionado para tela de cadastro senha") do
    @page_cad_senha = Cadastro_Senha.new
    @page_cad_senha.screen
end