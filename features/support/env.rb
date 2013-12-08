require 'rubygems'
require 'selenium-webdriver'
require "rspec/expectations"

Before do
  @driver = Selenium::WebDriver.for :firefox
end

After do
  @driver.quit
end
