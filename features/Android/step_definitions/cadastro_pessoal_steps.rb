Dado("que estou na tela de Cadastro Dados Pessoais") do
    steps (%"E que estou na tela inicial
             E clico em cadastre-se")

    @page_cad = Cadastro_Pessoal.new
    @page_cad.screen
end
  
Dado("que tenho os dados {string} e {string}") do |cpf, nome|
    @page_cad.send 'register_cpf_et', cpf
    @page_cad.send 'register_name_et', nome
end
  
Dado("{string} e {string}") do |email, confirm_email|
    @page_cad.send 'register_email_et', email
    @page_cad.send 'register_confirm_email_et', confirm_email
end

Dado("tambem {string} e {string}") do |data, cel|
    @page_cad.send 'register_birthday_et', data
    @page_cad.send 'register_cellphone_et', cel
end
  
Dado("{string}") do |sexo|
    @page_cad.click "radioButton#{sexo}"
end
  
Quando("toco em avancar") do
    @page_cad.click ('bt_send_register')
end
  
Entao("sou direcionado para tela de dados residenciais") do
    @pag_cad_res = Cadastro_Residencial.new
    @pag_cad_res.screen
end
  
Entao("visualizo mensagem de {string}") do |mensagem|
    @page_cad.find_byXpath mensagem
end