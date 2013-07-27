Given /I submit desktop login form/i do
  steps %Q{
    * I wait "2"
    * I fill in "email" with "#{Keys.email}"
    * I fill in "pass" with "#{Keys.password}"
    * I click_on "u_0_1" "id"
    * I wait "7"
  }
end

Given /I submit mobile login form/i do
  puts email = @driver.find_element(:name, 'email')
  email.send_keys("#{Keys.email}")
  puts password = @driver.find_elements(:class, 'input').last
  password.send_keys("#{Keys.password}")
  steps %Q{
    * I xpath "Log In" "button"
  }
end

