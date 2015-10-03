Feature: Methods
	As a registered user of SERLER
	I want to be able to search for empirical evidence on different methods based on different constraints 
	so that I can make informed decisions

Background:
	Given I'm logged in as user
	And I am on the search page
	When I fill in "Search for:" with "saasbook"
	And I select "Scrum" from methodolgy
	And I select "daily stand up meeting" from methods
	And I click on "Search" button

Scenario: View
    Then I should see results based on different constraints
