Feature: Save Search
  As a registered user
  I want to be able to save the results or the query of my search
  so that I can re-display it later

Background:
  Given I'm logged in as user
  And I am on the search page
  When I fill in "q_c_2_v_0_value" with "three"
  And I click on "Search" button
  Then I should see "evidence item three"
  And I should not see "evidence item one"

Scenario: Save and re-display search result
  When I fill in "saved_search_result_name" with "result for 3"
  And I fill in "saved_search_result_comment" with "a useful result for 3"
  And I click on "Save Result"
  # Then I should see "Search result saved"
  When I visit saved search results page
  Then I should see "a useful result for 3"
  # TODO: create another matching item
  When I click on "result for 3"
  Then I should not see "evidence item one"
  And I should not see "evidence item three"
  And I should see "evidence item two"
  # TODO: I should NOT see the new matching item

Scenario: Save and re-display search queries
  When I fill in "saved_search_query_name" with "query for 3"
  And I fill in "saved_search_query_comment" with "a useful query for 3"
  And I click on "Save Query"
  # TODO: Then I should see "Search query saved"
  When I visit saved search queries page
  Then I should see "a useful query for 3"
  # TODO: create another matching item
  When I click on "query for 3"
  Then I should see "evidence item three"
  # TODO: I should see the new matching item

Scenario: See an error when saving a search query under the same name
  When I fill in "saved_search_query_name" with "duplicate saved query"
  And I click on "Save Query"
  And I fill in "saved_search_query_name" with "duplicate saved query"
  And I click on "Save Query"
  Then I should see "Name has already been taken"

Scenario: See an error when saving a search result under the same name
  When I fill in "saved_search_result_name" with "duplicate saved result"
  And I click on "Save Result"
  And I fill in "saved_search_result_name" with "duplicate saved result"
  And I click on "Save Result"
  Then I should see "Name has already been taken"
