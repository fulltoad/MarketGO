Dado("que estou na tela inicial") do
    @page_first = Initial.new
    @page_first.screen
end

Dado("clico em ja sou cadastrado") do
    @page_first.button ('btnJaCadastrado')
end

Dado("clico em cadastre-se") do
    @page_first.button ('btnCadastrar')
end
  
Entao("sou direcionado para tela cadastro") do
    @page_cad = Cadastro_Pessoal.new
    @page_cad.screen
end
  
Entao("sou direcionado para tela login") do
    @page_login = Login.new
    @page_login.screen
end