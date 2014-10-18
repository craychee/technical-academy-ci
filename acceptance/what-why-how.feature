Feature: CI presentation.
  As the CI presenter,
  I want to be able to answer the what, why, and how of CI
  so that the attendees of Technical Academy can stay current with best practices.

Scenario:
    Given I am on "/#/2"
    Then I should see "continuous integration is"
    And I should see "what"

Scenario:
    Given I am on "/#/3/5"
    Then I should see "prepare yourself for my one"
    And I should see "why"
    And I should see "slide"

Scenario:
    Given I am on "/#/4"
    Then I should see "How"
    And I should see "does one CI?"
