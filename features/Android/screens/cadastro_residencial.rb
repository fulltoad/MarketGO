class Cadastro_Residencial < BaseScreen
    def screen 
        name_screen_id ('linearLayoutAddress')
    end

    def find_byXpath (msg)
        @alert = find_elements_byXpath msg
    end

end