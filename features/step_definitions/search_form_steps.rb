When(/^I select the State "(.*?)" in the search form$/) do |state|
  @buy_page.select_state(state)
end

When(/^I select the suburb "(.*?)" in the search form$/) do |suburb|
  @buy_page.select_suburb(suburb)
end

When(/^I select the property type "(.*?)" in the search form$/) do |type|
  @buy_page.select_property_type(type)
end

When(/^I set the maximum price to "(.*?)" in the search form$/) do |price|
  @buy_page.set_maximum_price(price)
end

When(/^I click on the Search button$/) do
  @buy_results_page = @page = @buy_page.click_search_button
end

Then(/^the results page should display$/) do
  @buy_results_page.wait_for_page_to_load
end

Then(/^the results page should show the expected number of results$/) do
  # Pretend we know how to verify the number of results against a data source
  # Hard-coded in the configuration for now
  number = Configuration::NUMBER_OF_RESULTS

  expect(@buy_results_page.showing_number_of_results_text).to \
  match(/^Showing \d+? - \d+? of #{number} Total Results$/)
end

Then(/^the results page should show results in the suburb "(.*), (.*)"$/) do \
  |state, suburb|
  expect(@buy_results_page.results_heading_text).to \
  match(/^Results for .* in #{state}, #{suburb}/i)
end
