class Cadastro_Senha < BaseScreen
    def screen 
        name_screen_id ('linearLayoutPassword')
    end

    def send field_id, text
        send_keys_id field_id, text
    end

    def click (bt)
        button_click_id (bt)
    end

    def find_id (id)
        find_element_id (id)
    end
end