Feature: Save Results
	As a registered user 
	I want to be able to save the results of my search 
	so that I can view them later

Background:
    Given I'm logged in as user
    And I am on the search page
    When I fill in "Search for:" with "saasbook"
    And I click on "Search" button

Scenario: Save
	Given I click on "Save Result" button
	Then I should be able to save search results