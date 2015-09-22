Feature: Manage Shares
  As a registered user,
  I want to be able to share the results of my search by email or facebook,
  So that I can inform collaborators

 Scenario: Share
    Given I'm logged in as user
    When I fill in "search" with "saasbook"
    And I click on "search" button
    And I click on facebook "share" button
    Then search results should be sent to facebook