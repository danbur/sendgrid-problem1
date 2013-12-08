Given /^I am on the realestate.com.au page$/ do
  @driver.get "http://www.realestate.com.au"
  @page = NonCommercialPage.new(@driver)
  @page.wait_for_page_to_load
  expect(@page.header_logo_hover_text).to eq ("realestate.com.au homepage")
end

Given(/^I am on the Buy page$/) do
  @driver.get "http://www.realestate.com.au/buy"
  @buy_page = @page = BuyPage.new(@driver)
  verify_buy_page_displays
end

When /^I click on the Buy header link$/ do
  @buy_page = @page = @page.click_buy_link
end

Then /^the Buy page should display$/ do
  verify_buy_page_displays
end

When /^I click on the Rent header link$/ do
  @rent_page = @page = @page.click_rent_link
end

Then /^the Rent page should display$/ do
  @rent_page.wait_for_page_to_load
  expect(@rent_page.search_headline_text).to \
  eq("Find rental properties on Australia's no. 1 property site")
end

When /^I click on the Share header link$/ do
  @share_page = @page = @page.click_share_link
end

Then /^the Share page should display$/ do
  @share_page.wait_for_page_to_load
  expect(@share_page.search_hero_message_text).to \
  match(/Finding that perfect roommate just got easier/i)
end
  
When /^I click on the Sold header link$/ do
  @sold_page = @page = @page.click_sold_link
end

Then /^the Sold page should display$/ do
  @sold_page.wait_for_page_to_load
  expect(@sold_page.search_headline_text).to \
  eq("Find sold properties on Australia's no. 1 property site")
end

When /^I click on the New Homes header link$/ do
  @new_homes_page = @page.click_new_homes_link
end

Then /^the New Homes page should display$/ do
  @new_homes_page.wait_for_page_to_load
  links_text = @new_homes_page.sub_nav_links_text
  expect(links_text.length).to eq(4), \
  "Expecting 4 sub nav links, found #{links_text.length}"
  expect(links_text[0]).to eq("New Apartments")
  expect(links_text[1]).to eq("Land Estates")
  expect(links_text[2]).to eq("House and Land Packages")
  expect(links_text[3]).to eq("Home Designs")
end

When(/^I click on the Retire header link$/) do
  @retire_page = @page = @page.click_retire_link
end

Then(/^the Retire page should display$/) do
  @retire_page.wait_for_page_to_load
  expect(@retire_page.search_hero_message_text).to \
  match(/Choose the lifestyle that's right for you/i)
end

When(/^I click on the Find Agents header link$/) do
  @find_agents_page = @page = @page.click_find_agents_link
end

Then(/^the Find Agents page should display$/) do
  @find_agents_page.wait_for_page_to_load
  expect(@find_agents_page.search_headline_text).to \
  eq("Find real estate agents on Australia's no. 1 property site")
end

When(/^I click on the Home Ideas header link$/) do
  @home_ideas_page = @page = @page.click_home_ideas_link
end

Then(/^the Home Ideas page should display$/) do
  @home_ideas_page.wait_for_page_to_load
  expect(@home_ideas_page.home_ideas_logo_hover_text).to \
  eq("Home Ideas Home Page")
end

When(/^I click on the Blog header link$/) do
  @blog_page = @page = @page.click_blog_link
end

Then(/^the Blog page should display$/) do
  @blog_page.wait_for_page_to_load
  links_text = @blog_page.category_links_text
  expect(links_text.size).to eq(6), \
  "Expecting 6 category links, found #{links_text.size}"
  expect(links_text[0]).to match(/Home/i)
  expect(links_text[1]).to match(/News/i)
  expect(links_text[2]).to match(/Tips & Guides/i)
  expect(links_text[3]).to match(/Finance/i)
  expect(links_text[4]).to match(/Inspiration/i)
  expect(links_text[5]).to match(/Lifestyle/i)
end

When(/^I click on the Commerical header link$/) do
  @commercial_page = @page.click_commercial_link
end

Then(/^the Commercial page should open in a new window$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => \
                                         Configuration::TIMEOUT)
  wait.until { @driver.window_handles.size > 1 }
  @driver.switch_to.window(@driver.window_handles.last)
  verify_commercial_page_displays
end

Then(/^the Commercial page should display$/) do
  verify_commercial_page_displays
end

def verify_buy_page_displays
  @buy_page.wait_for_page_to_load
  expect(@buy_page.search_headline_text).to \
  eq("Find more properties on Australia's no. 1 property site")
end

def verify_commercial_page_displays
  @commercial_page.wait_for_page_to_load
  expect(@commercial_page.header_logo_hover_text).to \
  eq("realcommercial.com.au homepage")
end
