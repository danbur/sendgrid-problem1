Given /^I am on the realestate.com.au page$/ do
  @driver.get "http://www.realestate.com.au"
  @page = BuyPage.new(@driver)
  @page.verify_base_elements
end

When /^I click on the Buy header link$/ do
  @page = @page.click_buy_link
end

Then /^the Buy page should display$/ do
  @page.verify_base_elements
  expect(@page.search_headline_text).to \
      eq("Find more properties on Australia's no. 1 property site")
end

When /^I click on the Rent header link$/ do
  @page = @page.click_rent_link
end

Then /^the Rent page should display$/ do
  @page.verify_base_elements
  expect(@page.search_headline_text).to \
      eq("Find rental properties on Australia's no. 1 property site")
end

When /^I Click on the Share header link$/ do
  @page = @page.click_share_link
end

Then /^the Share page should display$/ do
  @page.verify_base_elements
  expect(@page.search_hero_message_text.downcase).to \
      eq("Finding that perfect roommate just got easier".downcase)
end
  
When /^I click on the Sold header link$/ do
  @page = @page.click_sold_link
end

Then /^the Sold page should display$/ do
  @page.verify_base_elements
  expect(@page.search_headline_text).to \
      eq("Find sold properties on Australia's no. 1 property site")
end

When /^I click on the New Homes header link$/ do
  @page = @page.click_new_homes_link
end

Then /^the New Homes page should display$/ do
  @page.verify_base_elements
  expect(@page.search_headline_text).to \
      eq("Find new home designs on Australia's no. 1 property site")
end

When(/^I click on the Share header link$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click on the Retire header link$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the Retire page should display$/) do
  pending # express the regexp above with the code you wish you had
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
