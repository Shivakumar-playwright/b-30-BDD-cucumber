Feature:add employeee functionality

    Scenario:Verify add employee with mandatory fields
        Given user launches the url
        When user enters valid username as "Admin" and password as "admin123"
        And user click on login button
        Then user should navigate to the dashboard page
        When user click on PIM button
        When user click on add employee menu
        When user enters firstname as "shiva" and lastname as "kumar"
        And user click on save button
        Then employee should be created successfully

    Scenario:verify error message for mandatory fields
        Given user launches the url
        When user enters valid username as "Admin" and password as "admin123"
        And user click on login button
        Then user should navigate to the dashboard page
        When user click on PIM button
        When user click on add employee menu
        And user click on save button
        Then user should get error message for firstname and last name