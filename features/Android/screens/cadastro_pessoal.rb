class Cadastro_Pessoal < BaseScreen
    def screen
        name_screen_id ('linearLayoutRegister')
    end

    def send field_id, text
        send_keys_id field_id, text
    end

    def click (bt)
        button_click_id (bt)
    end

    def find_byXpath (msg)
        @alert = find_elements_byXpath msg
    end

end