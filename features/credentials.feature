Feature: Credential Scenarios

Scenario: Desktop Login/Logout with Facebook
  * I am on the wunderlist home page
  * I xpath "Log In" "text"
  * I xpath "Log In With Facebook" "text"
  * I submit desktop login form
  * I click_on "avatar" "class"
  * I click_on "logout" "class"

Scenario: Mobile Login/Logout with Facebook
  * I am on the wunderlist home page
  * I xpath "Log In" "text"
  * I xpath "Log In With Facebook" "text"
  * I submit mobile login form
  * I click_on "toggle-lists" "class"
  * I click_on "avatar" "class"
  * I click_on "logout" "class"