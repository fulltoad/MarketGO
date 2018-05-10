require 'appium_lib'
require 'pry'

caps_path = File.join(File.dirname(__FILE__), '..', '..', 'caps', ENV['QA'], "#{ENV['PLATFORM']}.txt")

caps = Appium.load_appium_txt file: caps_path, verbose: true

Appium:: Driver.new caps, true


Before do |scenario|
    $driver.start_driver

    $driver.remove_app "br.com.finners.marketpay"

    $driver.launch_app
end

After do |scenario |
    #sleep 1
    #file_name = "screenshot_#{Time.now.strftime('%Y%m%d%H%M%S%')}.png"
    #$driver.screenshot(File.join("/Users/brunomelo/Desktop/MarketGO/screenshots", file_name))
    $driver.driver_quit
end