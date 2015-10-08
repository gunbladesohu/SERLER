Feature: Select Visible Columns
As a registered user,
I want to be able to select what columns are visible in a displayed search,
So that I can experiment with what is visible

  Background:
    Given I'm logged in as user
    And I am on the search page
    When I fill in "q_c_2_v_0_value" with "saasbook"
    And I click on "Search" button

  Scenario: Visible
    Given I click on a "date" column in a displayed search
    Then I should not see date column
