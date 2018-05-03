class Login < BaseScreen

    def screen
        name_screen_id ('linearLayoutLogin')
    end

    def click (bt)
        button_click_id (bt)
    end

    def send field_id, text
        send_keys_id field_id, text
    end

    def find_byXpath (msg)
        @alert = find_elements_byXpath msg
    end

    def find_id (id)
        find_element_id (id)
    end
end