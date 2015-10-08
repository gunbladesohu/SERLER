Feature: Methods
	As a registered user of SERLER
	I want to be able to search for empirical evidence on different methods based on different constraints 
	so that I can make informed decisions

Background:
	Given I'm logged in as user
	And I am on the search page
	When I fill in "q_c_2_v_0_value" with "saasbook"
	And I select "SCRUM" from Methodologies 
	And I select "test driven development" from Methods 
	And I click on "Search" button

Scenario: View
    Then I should see name description of evidence item related "scrum" and "test driven development" in methods
