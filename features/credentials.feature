Feature: Credential Scenarios

@desktop
Scenario: Desktop Login/Logout with Facebook
  * I am on the wunderlist home page
  * I xpath "Log In" "text"
  * I xpath "Log In With Facebook" "text"
  * I submit desktop login form
  * I click_on "avatar" "class"
  * I click_on "logout" "class"

@ipad
Scenario: Mobile iPad Login/Logout with Facebook
  * I am on the wunderlist home page
  * I xpath "Log In" "text"
  * I xpath "Log In With Facebook" "text"
  * I submit iPad login form
  * I click_on "toggle-lists" "class"
  * I click_on "avatar" "class"
  * I click_on "logout" "class"

@iphone
Scenario: Mobile iPhone Login/Logout with Facebook
  * I am on the wunderlist home page
  * I click_on "open-mobile-login" "class"
  * I xpath "Log In With Facebook" "text"
  * I submit mobile login form
  * I click_on "list-list" "class"
  * I click_on "avatar" "class"
  * I click_on "logout" "class"

@android_tablet
Scenario: Mobile iPad Login/Logout with Facebook
  * I am on the wunderlist login page
  * I xpath "Log In" "text"
  * I xpath "Log In With Facebook" "text"
  * I submit iPad login form
  * I click_on "toggle-lists" "class"
  * I click_on "avatar" "class"
  * I click_on "logout" "class"