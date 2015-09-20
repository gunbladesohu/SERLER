Feature: Browser title
  In order to quickly identify browser windows
  All users
  Should see the page and Serler in the title bar.

  Scenario: See the Serler in the title bar of the Browser
    Given I am on the index page
    Then I should read in the title bar of the Browser: "Serler"

  # todo: Scenario: See the page title in the title bar of the Browser
