require 'rubygems'
require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'faker'

Before do
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.maximize
  @target = 'https://www.wunderlist.com'
  @time = 10
end

# AfterStep do
#   puts @js_errors = @driver.execute_script("return window.jsErrors")
#   raise "JAVASCRIPT ERRORS => #{@js_errors}" unless @js_errors == []
# end