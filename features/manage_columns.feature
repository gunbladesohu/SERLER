Feature: Visible Columns
As a registered user,
I want to be able to select what columns are visible in a displayed search,
So that I can experiment with what is visible

Scenario: Visible
    Given I have results of a search 
    When I click on a column header to hide
    Then I should see results without hidden column


