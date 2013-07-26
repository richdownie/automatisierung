Given /I login with facebook/i do
  steps %Q{
    * I wait "3"
    * I click_on "show-login" "class"
    * I wait "3"
    * I xpath "Log In With Facebook" "text"
    * I fill in "Email" with "#{Keys.email}"
    * I fill in "Passwd" with "#{Keys.password}"
  }
end

