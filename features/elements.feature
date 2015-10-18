Feature: Elements
  As a registered user,
  I want to see labels for the form fields of the search constraints, so that I can be sure what to enter

Background:
  Given I'm logged in as user
  And I am on the search page

Scenario: Methodologies Label
  Then I should see "Methodologies"

Scenario: Methods Label
  Then I should see "Methods"

Scenario: Search by  Label
  Then I should see "Search by"

Scenario: Criteria Label
  Then I should see "Criteria"

Scenario: Additional info Label
  Then I should see "Additional info"

Scenario: Additional info Label
  Then I should see "Additional info"

Scenario: plus sign for add
  Then I should see "i.glyphicon.glyphicon-plus" in css

Scenario: minus sign for remove
  Then I should see "i.glyphicon.glyphicon-plus" in css
