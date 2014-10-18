@api @javascript
Feature: CI presentation.
  As a the CI presenter,
  I want to be able to clearly present the basics of CI
  so that the attendees of Technical Academy can stay current with best practices.

Scenario:
    Given I am on "#/1"
    Then I should see text matching "Why you should trust me"
    Given I am on "#/2"
    Then I should see text matching "back to that"
