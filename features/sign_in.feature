Feature: Existing users can sign in

  Scenario: User signs in
    Given I am a user
    When I sign in
    Then I should be signed in
