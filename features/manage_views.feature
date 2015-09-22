Feature: Manage Views
  As a registered user,
  I want to be able to view the results of a search in a tabular format,
  So that I can view a lot of information easily.

 Scenario: View
    Given I'm logged in as user
    When I fill in "search" with "saasbook"
    And I click on "search" button
    Then I should see results in a table