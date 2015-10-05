Feature: Save Query
  As a registered user
  I want to be able to save any search queries
  so that I can easily run them again later to save time


Background:
  Given I'm logged in as user
  And I am on the search page
  When I fill in "Search for:" with "saasbook"
  And I click on "Search" button
  And I fill in "saved_search_query_name" with "query name"
  And I fill in "saved_search_query_name" with "software enginerring"

Scenario: Query
  Given I click on "Save Query" button under the title "save search query"
  Then I should be able to save search query

Scenario: View Queries
  Given I visit saved search queries page
  Then I should be able to view my "Saved search queries"
