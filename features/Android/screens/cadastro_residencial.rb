class Cadastro_Residencial < BaseScreen
    def screen 
        name_screen_id ('linearLayoutAddress')
    end

    def find_byXpath (msg)
        @alert = find_elements_byXpath msg
    end

    def send field_id, text
        send_keys_id field_id, text
    end

    def click (bt)
        button_click_id (bt)
    end

    def scroll
        swipe_down
    end

    def tab (field_id)
        send_keys_id field_id, ':tab'

    end
end