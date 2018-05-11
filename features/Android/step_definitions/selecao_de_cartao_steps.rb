Dado("que fiz o login") do
    steps(%"E que estou na tela de login
        E possuo os seguintes dados '<65467863118>' e 'Teste123'
        E toco em acessar")
        
    @pag_sel_cartao = Seleciona_Cartao.new
    @pag_sel_cartao.screen
end
  
Entao("visualizo meu cartao cadastrado") do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando("seleciono o cartao") do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando("sou direcionado para a home") do
    @pag_home = Home_Status.new
    @pag_home.screen
end
  
Quando("clico no icone de remover") do
    @pag_sel_cartao.click 'row_imagebutton_delete_card'
end
  
Quando("visualizo o popup para confirmar a exclusao") do
    alert = @page_cad_senha.find_id 'alertTitle'
    expect(alert.text).to eql 'Deletar o cartão'
end
  
Quando("toco em Deletar") do
    @pag_sel_cartao.click 'button1'
end
  
Entao("visualizo a mensagem {string}") do |mensagem|
    alert = @page_cad_senha.find_id 'alertTitle'
    expect(alert.text).to eql 'Deletar o cartão'
end
  
Entao("clico em OK para fechar o popup") do
    @pag_sel_cartao.click 'button1'
end
  
Dado("que nao tenho nenhum cartao cadastrado") do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando("toco no botao Adicionar Cartão") do
    @pag_sel_cartao.click 'bt_register_card'
end
  
Quando("sou direcionado para tela de adicao de cartao") do
    @pag_adicionar_cartao = Adicinar_Cartao.new
    @pag_adicionar_cartao.screen
end
  
Entao("informo o {string} e {string}") do |nome_cartao, nro_cartao|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando("toco em Salvar cartao") do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando("vejo a mensagem {string}") do |mensagem|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando("clico em OK") do
    pending # Write code here that turns the phrase above into concrete actions
end