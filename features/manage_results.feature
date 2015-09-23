Feature: Sort Results
  As a registered user,
  I want to be able to easily sort the displayed results of a search by any column displayed,
  So that I can experiment with what is useful

 Scenario: Sort
    Given I'm logged in as user
    And I am on the index page
    When I fill in "Search for:" with "saasbook"
    And I click on "Search" button
    And I click on a "result" column
    Then I should see results resorted
