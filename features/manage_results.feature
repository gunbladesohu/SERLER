Feature: Sort Results
  As a registered user,
  I want to be able to easily sort the displayed results of a search by any column displayed,
  So that I can experiment with what is useful

 Scenario: Sort
    Given I have results of a search with column "date"
    When I click on a column header
    Then I should see results resorted