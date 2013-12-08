Feature: Header links
  In order to navigate to different pages
  As a user
  I want links to the pages in the header

Scenario: Buy header link
  Given I am on the realestate.com.au page
  When I click on the Buy header link
  Then the Buy page should display

Scenario: Rent header link
  Given I am on the realestate.com.au page
  When I click on the Rent header link
  Then the Rent page should display

Scenario: Share header link
  Given I am on the realestate.com.au page
  When I click on the Share header link
  Then the Share page should display

Scenario: Sold header link
  Given I am on the realestate.com.au page
  When I click on the Sold header link
  Then the Sold page should display

Scenario: New Homes header link
  Given I am on the realestate.com.au page
  When I click on the New Homes header link
  Then the New Homes page should display

Scenario: Click through all header links
  Given I am on the realestate.com.au page
  When I click on the Buy header link
  Then the Buy page should display
  When I click on the Rent header link
  Then the Rent page should display
  When I click on the Share header link
  Then the Share page should display
  When I click on the Sold header link
  Then the Sold page should display
  When I click on the New Homes header link
  Then the New Homes page should display
  When I click on the Retire header link
  Then the Retire page should display
  When I click on the Find Agents header link
  Then the Find Agents page should display
  When I click on the Home Ideas header link
  Then the Home Ideas page should display
  When I click on the Blog header link
  Then the Blog page should display
  When I click on the Commerical header link
  Then the Commercial page should open in a new window

