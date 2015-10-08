Feature: Manage Views
  As a registered user,
  I want to be able to view the results of a search in a tabular format,
  So that I can view a lot of information easily.

  Background:
    Given I'm logged in as user
    And I am on the search page
    When I fill in "q_c_2_v_0_value" with "saasbook"
    And I click on "Search" button

  Scenario: View
    Then I should see results in a table
