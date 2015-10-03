Feature: Save Query
	As a registered user
	I want to be able to save any search queries 
	so that I can easily run them again later to save time


Background:
    Given I'm logged in as user
    And I am on the search page
    When I fill in "Search for:" with "saasbook"
    And I click on "Search" button

Scenario: Save
	Given I click on "Save" button
	Then I should be able to save search query