Feature: As a Student,
         When I get admission to the school,
         I want to create my profile with my details

  Scenario: The student is creating his profile with details
    Given a student
    And he wants to save his details
      | Robert Downey | 1332 | India
    When he creates his profile
    Then his details are stored within
