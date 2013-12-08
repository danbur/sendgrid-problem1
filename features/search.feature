Feature: Search for properties on Buy page
  In order to locate properties
  As a prospective buyer
  I want a search form that 

Scenario: Search for apartments
  Given I am on the Buy page
  When I select the State VIC in the search form
  When I select the suburb Richmond in the search form
  When I select the property type Apartment in the search form
  When I set the maximum price to 500,000 in the search form
  When I click on Search
  Then the results page should display
  Then the results page should show the number of results
  Then the results page should show results in the suburb Richmond, VIC