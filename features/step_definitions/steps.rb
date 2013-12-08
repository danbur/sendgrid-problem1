Given /^I am on the realestate.com.au page$/ do
  @driver.get "http://www.realestate.com.au"
  @buy_page = @page = BuyPage.new(@driver)
  @page.wait_for_page_to_load
end

When /^I click on the Buy header link$/ do
  @buy_page = @page = @page.click_buy_link
end

Then /^the Buy page should display$/ do
  @buy_page.wait_for_page_to_load
  expect(@buy_page.search_headline_text).to \
  eq("Find more properties on Australia's no. 1 property site")
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
  sub_nav_links_text = @new_homes_page.sub_nav_links_text
  expect(sub_nav_links_text.length).to eq(4)
  expect(sub_nav_links_text[0]).to eq("New Apartments")
  expect(sub_nav_links_text[1]).to eq("Land Estates")
  expect(sub_nav_links_text[2]).to eq("House and Land Packages")
  expect(sub_nav_links_text[3]).to eq("Home Designs")
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
  pending # express the regexp above with the code you wish you had
end

Then(/^the Find Agents page should display$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click on the Home Ideas header link$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the Home Ideas page should display$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click on the Blog header link$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the Blog page should display$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click on the Commerical header link$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the Commercial page should open in a new window$/) do
  pending # express the regexp above with the code you wish you had
end
