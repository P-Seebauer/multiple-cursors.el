Feature: Align cursors with whitespaces
    
  Scenario: Vertical aligning with `x'
    Given I have cursors at "word" in :
    """
    One word
    Another word
    """
    And I press "<<mc/vertical-align>> \170"
    Then I should see:
    """
    One xxxxword
    Another word
    """

  Scenario: No Vertical aligning with `x' when on same line
    Given I have cursors at "word" in "One word Another word"
    And I press "<<mc/vertical-align>> \170"
    Then I should see "One word Another word"

  Scenario: Vertical aligning with space
    Given I have cursors at "word" in :
    """
    One word
    Another word
    """
    And I press "<<mc/vertical-align-with-space>>"
    Then I should see:
    """
    One     word
    Another word
    """

  Scenario: No Vertical aligning with space when on same line
    Given I have cursors at "word" in "One word Another word"
    And I press "<<mc/vertical-align-with-space>>"
    Then I should see "One word Another word"
