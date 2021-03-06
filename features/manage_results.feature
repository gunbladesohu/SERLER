Feature: Sort Results
  As a registered user,
  I want to be able to easily sort the displayed results of a search by any column displayed,
  So that I can experiment with what is useful

  Background:
    Given I'm logged in as user
    And I am on the search page
    When I fill in "q_c_2_v_0_value" with "saasbook"
    And I click on "Search" button

  Scenario: Sort
    Given I click on a "result" column
    Then I should see results resorted

  Scenario: irrelevant data
    Then I should not see date column
