Feature: verify Login Functionality

  Scenario: Successful login with valid credentials
    Given user launches the url
    When user enters valid username as "student" and password as "Password123"
    And user click on login button
    Then user should navigate to the dashboard page

  Scenario: login with  valid username and invalid password
    Given user launches the url
    When user enters valid username as "student" and password as "adminnnn122"
    And user click on login button
    Then user should see error message in the login page

  Scenario: login with  invalid username and valid password
    Given user launches the url
    When user enters valid username as "Adminnnn" and password as "Password123"
    And user click on login button
    Then user should see error message in the login page

  Scenario: login with  invalid username and invalid password
    Given user launches the url
    When user enters valid username as "Adminnnn" and password as "admin1e323"
    And user click on login button
    Then user should see error message in the login page
