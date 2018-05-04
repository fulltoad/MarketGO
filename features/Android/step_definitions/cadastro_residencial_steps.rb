Dado("que estou na tela de dados residenciais") do
    steps (%"E que estou na tela de Cadastro Dados Pessoais
        E que tenho os dados '<22846669813>' e '<Bruno Melo>'
        E '<brunor.melo@test.com>' e '<brunor.melo@test.com>'
        E tambem '<01081986>' e '<11985559970>'
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
    @page_cad_res.scroll
end

E("{string} com {string}") do |numero, complemento|
    @page_cad_res.send 'register_numero_et', numero
    @page_cad_res.send 'register_complemento_et', complemento
end

Dado("que tenho os dados residenciais {string} e {string}") do |cep, nome_rua|
    @page_cad_res.send 'register_cep_et', cep
    @page_cad_res.send 'register_endereco_et', nome_rua
end

Dado("tambem {string}, {string} e {string}") do |cidade, estado, bairro|
    @page_cad_res.send 'register_estado_et', estado
    @page_cad_res.send 'register_cidade_et', cidade
    @page_cad_res.send 'register_bairro_et', bairro
end

Quando("toco em continuar") do 
    @page_cad_res.click ('bt_next_password')
end

Entao("sou direcionado para tela de cadastro senha") do
    @page_cad_senha = Cadastro_Senha.new
    @page_cad_senha.screen
end

# CEP register_cep_et
# End register_endereco_et
# Num register_numero_et
# Com register_complemento_et
# Est register_estado_et
# Cid register_cidade_et
# Bai register_bairro_et

# Bt_Proximo bt_next_password