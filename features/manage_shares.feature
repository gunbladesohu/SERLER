Feature: Manage Shares
  As a registered user,
  I want to be able to share the results of my search by email or facebook,
  So that I can inform collaborators

 Scenario: Share
    Given I have results of a search 
    When I click on a share buttons
    Then I should be able to send a current search results to social media