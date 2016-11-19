require 'selenium-webdriver'
require 'cucumber'
  
  Selenium::WebDriver::Chrome.driver_path="/Users/prashanthsams/Documents/Test/propertyfinderae/libs/chromedriver"
  driver = Selenium::WebDriver.for :chrome

  Given(/^I go to google$/) do 
    driver.get "http://www.google.com"
  end
  
  Then(/^I search for "([^"]*)"$/) do |arg1|
    element = driver.find_element(:name, 'q')
    element.send_keys arg1
    element.submit
    puts "finished ..."
    sleep 5
  end
