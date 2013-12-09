Feature: Search for properties on Buy page
  In order to locate properties
  As a prospective buyer
  I want a search form that allows me to find the properites I am looking for

Scenario: Search for apartments
  Given I am on the Buy page
  When I select the State "VIC" in the search form
  When I select the suburb "Richmond" in the search form
  When I select the property type "Apartment" in the search form
  When I set the maximum price to "500,000" in the search form
  When I click on the Search button
  Then the results page should display
  Then the results page should show results in the suburb "Richmond, VIC"
  Then the results page should show the expected number of results
