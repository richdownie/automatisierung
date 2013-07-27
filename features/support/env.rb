require 'rubygems'
require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'faker'

caps = Selenium::WebDriver::Remote::Capabilities.ipad
caps.platform = 'OS X 10.8'
caps.version = '5.1'
caps[:name] = "Running tests in iPad Safari"


driver = Selenium::WebDriver.for(
  :remote,
  :url => "http://richdownie:a371c70c-177a-43ce-ab24-5f3906d474bd@ondemand.saucelabs.com:80/wd/hub",
  :desired_capabilities => caps)

Before do
  @driver = driver	
  @driver.manage.window.maximize
  @driver.manage.window.move_to(0, 0)
  @target = 'https://www.wunderlist.com'
  @time = 10
end

AfterStep do
  sleep 1
end

After do |scenario|
  @driver.manage.delete_all_cookies()
end

at_exit do
  driver.quit
end