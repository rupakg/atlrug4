Feature: Talks can be proposed and approved
  Scenario: User submits a proposal
    When I submit a talk named "Debugging with Pry" with length of 30 minutes
    Then I should see the talk was submitted successfully

  Scenario: User submits an incomplete proposal
    When I submit an incomplete talk named "Talk Too Long" with length of 1000 minutes
    Then I should see the talk was not submitted successfully

  Scenario: Admin approves a talk
    Given I'm logged in as an admin
    And a talk has been submitted
    When I go approve a talk
    Then I should see it scheduled for the next meetup
