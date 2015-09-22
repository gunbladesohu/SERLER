Feature: Sort Results
  As a registered user,
  I want to be able to easily sort the displayed results of a search by any column displayed,
  So that I can experiment with what is useful

 Scenario: Sort
    Given I'm logged in as user
    When I fill in "search" with "saasbook"
    And I click on "search" button
    And I click on a "date" column
    Then I should see results resorted