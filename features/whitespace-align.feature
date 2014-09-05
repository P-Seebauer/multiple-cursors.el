Feature: Align cursors with whitespaces
    
  Scenario: Vertical aligning 
    Given I have cursors at "word" in :
    """
    One word
    Another word
    """
    And I press "M-x mc/align-with-spaces"
    Then I should see:
    """
    One     word
    Another word
    """

  Scenario: No Vertical aligning when on same line
    Given I have cursors at "word" in "One word Another word"
    And I press "M-x mc/align-with-spaces"
    Then I should see "One word Another word"

