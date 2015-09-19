Feature: Manage Views
  As a registered user,
  I want to be able to view the results of a search in a tabular format,
  So that I can view a lot of information easily.

 Scenario: View
    Given I have results of a search 
    When I perform a search
    Then I should see results in a table