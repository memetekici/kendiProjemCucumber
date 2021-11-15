@hook3
Feature: US1003_user_should_add_data_scenario_outline

  Scenario Outline: : TC01_Testing_the_data_tables_web_page
    Given user is on the datatables page
    And user clicks on the new button
    When user enters the firstname "<firstname>"
    When user enters the lastname "<lastname>"
    When user enters the position "<position>"
    When user enters the office "<office>"
    When user enters the extension "<extension>"
    When user enters the startdate "<startdate>"
    When user enters the salary "<salary>"
    And user clicks on the create button
    And search for the first name "<firstname>"
    Then verify the name fields contains first name "<firstname>"

    Examples: test data for the data table test
    |firstname|lastname|position|office|extension|startdate|salary|
    |john     |sam     |doctor  |LA    |4560     |2020-10-21|7800000|
    |john1    |sam1    |doctor1 |LA1   |4561     |2020-10-22|7900000|
    |john2    |sam2    |doctor2 |LA2   |4562     |2020-10-23|7200000|
    |john3    |sam3    |doctor3 |LA3   |4563     |2020-10-24|7300000|
    |john4    |sam4    |doctor4 |LA4   |4564     |2020-10-25|7400000|
