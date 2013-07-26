Given /I click_on "(.*)" "(.*)"/ do |value, type|
  steps %Q{
	  * I wait until "#{value}" "#{type}" renders
  }
  @driver.find_element(type.to_sym => value).click
end

When /I wait until "(.*)" "(.*)" renders/ do |value, type|
  if value == "preferences-command" || value == "ui-inline-del" then
    sleep 2
  end
  start_time = Time.now.to_i
  wait = Selenium::WebDriver::Wait.new(:timeout => @time)
  wait.until {
    element = @driver.find_element(type.to_sym => value )
    element if element.displayed?
  }
  end_time = Time.now.to_i - start_time
  puts (end_time.to_s + " seconds to render " + "<" + type + ">" + value.inspect + "</" + type + ">")
end

Given /I xpath "(.*)" "(.*)"/ do |what, how|
  steps %Q{
	  * I wait for "#{what}" "#{how}" to render
  }
  @driver.find_element(:xpath, ".//" + how + "[text()='" + what + "']").click
end

When /I wait for "(.*)" "(.*)" to render/ do |what, how|
if what == "Insight" then
  puts sleep 2
end
  start_time = Time.now.to_i
  wait = Selenium::WebDriver::Wait.new(:timeout => @time)
  wait.until {
    element = @driver.find_element(:xpath, ".//" + how + "[text()='" + what + "']")
    element if element.displayed?
  }
  end_time = Time.now.to_i - start_time
  puts (end_time.to_s + " seconds to render " + "<" + how + ">" + what.inspect + "</" + how + ">")
end

Given /^I am on the (.+)/ do |page_name|
  @driver.get(path_to(page_name))
end

Given /I fill in "(.*)" with "(.*)"/ do |how, what|
  if (@driver.find_elements(:id, how).count >= 1 ) then
    @driver.find_element(:id, how).send_keys(what)
  elsif (@driver.find_elements(:class, how).count >=1) then
    @driver.find_element(:class, how).send_keys(what)
  end
end

Given /I should (NOT )?see "(.*)"/ do |visibility, what|
  sleep 1
  what = what.to_s.strip
  result = @driver.find_elements(:xpath, "//*[text()='" + what + "']")
  if (visibility.to_s.strip == 'NOT') then
    result.count.should == 0
  else
    result.count.should >= 1
  end
end

Given /I wait "(.*)"/ do |seconds|
 sleep seconds.to_i
end

Given /I should (NOT )?be on "(.*)"/ do |visibility, value|
  sleep 2
 puts url = @driver.current_url.to_s
  if (visibility.to_s.strip == 'NOT') then
     url.should_not include value
  else
    url.should include value
  end
  
end

Given /^I follow "(.*)"$/ do |what|
  @driver.find_element(:link_text, what).click
end

Given /I count "(.*)" list items under "(.*)"/i do |number, klass|
  sleep 4
  puts li = @driver.find_element(:class, klass).find_elements(:class, "command")
  li.count.should == number.to_i
end

Given /Browser Title should be "(.*)"/i do |title|
  sleep 1
  @driver.title.should == title
end

Given /I maximize browser/ do
  @driver.manage.window.maximize
end

Given /I take a screenshot and store it/ do
  file_path = File.expand_path(File.dirname(__FILE__)) + File::SEPARATOR + File.join("..", "screenshots", File::SEPARATOR)
  @driver.save_screenshot(file_path + "#{@driver.browser.to_s.upcase}" + "_" + "#{Time.now.strftime("%m_%d_%Y_%H_%M")}" + ".png") unless @driver.browser.to_s.upcase == "SAFARI"
end

Given /I enter new tab "(.*)"/ do | window_handle |
  puts @driver.window_handles
  @driver.switch_to.window("#{window_handle}")
end

Given /I close tab "(.*)"/ do | window_handle |
  puts @driver.window_handles
  @driver.switch_to.window("#{window_handle}")
  @driver.close
end
Given /Back to original window/ do 
  @driver.switch_to.default_content  
end

Given /I refresh the page/ do
  @driver.execute_script("$(document).ready(function(){
    location.reload(true);
  });")
  sleep 4
end

Given /I mouseover "(.*)"/ do |value|
  el = @driver.find_element(:class, value)
  @driver.action.move_to(el).perform
end

Given /I press the "(.*)" key/ do |value|
  @driver.action.send_keys(:return).perform
end

Given /I scroll to "(.*)" "(.*)"/ do |right_by, down_by|
  @driver.action.move_by(right_by.to_i, down_by.to_i).perform
end



