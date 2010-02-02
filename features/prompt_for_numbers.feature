Feature: Prompt for Numbers

As a party attendee
I want to enter the lost numbers
So I can try to win the big prize!

Scenario:

  Given there is an entry prompt
  When I enter 4, 8, 15, 16, 23, 42
  Then I should hear the numbers reset
  And I should be given a random number

  Given there is an entry prompt
  When I enter 4, 8, 15, 16, 23, 45
  Then I should hear the claxon alarm
  And I should be told that I have caused a plane crash

Feature: Entered to win

As a party host
I want to choose a random winner
So I don't have to keep track of entries myself

Scenario:

    Given I have entries
    When I request the winner
    Then I should be given a randomly chosen number for the winner
