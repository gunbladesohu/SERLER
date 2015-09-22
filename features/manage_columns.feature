Feature: Select Visible Columns
As a registered user,
I want to be able to select what columns are visible in a displayed search,
So that I can experiment with what is visible

Scenario: Visible
    Given I'm logged in as user 
    When I fill in "search" with "saasbook"
    And I click on "search" button
    And I click on a "date" column in a displayed search
    Then I should not see date column


