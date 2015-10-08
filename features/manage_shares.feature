Feature: Manage Shares
  As a registered user,
  I want to be able to share the results of my search by email or facebook,
  So that I can inform collaborators

  Background:
    Given I'm logged in as user
    And I am on the search page
    When I fill in "q_c_2_v_0_value" with "saasbook"
    And I click on "Search" button

  Scenario: Share
    Given I click on facebook "Share to Facebook" button
    Then search results should be sent to facebook

  Scenario: Share
    Given I click on facebook "Share to Email" button
    Then search results should be sent via email
