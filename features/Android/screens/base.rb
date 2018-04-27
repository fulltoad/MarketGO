class BaseScreen
    def name_screen_id (screen_id)
        $driver.wait_true(5) {$driver.exists {$driver.find_element(:id, screen_id)}}
    end

    def name_screen_xpath (xpath)
        $driver.wait_true(5) {$driver.exists {$driver.find_element(:xpath, xpath)}}
    end

    def button_click_id (button_id)
        b = $driver.find_element(:id, button_id)
        b.click 
    end

    def send_keys_id text_field, text
        t = $driver.find_element(:id, text_field)
        t.send_keys(text)
        
        if $driver.is_keyboard_shown
            hide_keyboard
        end
    end

    def find_elements_byXpath (text)
        $driver.wait_true(5) {$driver.exists {$driver.find_element(:name => /^#{text}/)}}
    end

    def hide_keyboard
        $driver.hide_keyboard()
    end

end
