
Feature: US1002_user_should_add_data_with_parameter
  @regression
  Scenario: TC01_Testing_the_data_tables_web_page
    Given user is on the datatables page
    And user clicks on the new button
    When user enters the firstname "memet"
    When user enters the lastname "ekici"
    When user enters the position "QA"
    When user enters the office "steandal"
    When user enters the extension "1234"
    When user enters the startdate "2020-10-10"
    When user enters the salary "70000"
    And user clicks on the create button
    And search for the first name "memet"
    Then verify the name fields contains first name "memet"
  @regression
  Scenario: TC02_Testing_the_data_tables_web_page
    Given user is on the datatables page
    And user clicks on the new button
    When user enters the firstname "fakename"
    When user enters the lastname "fakelast"
    When user enters the position "abs"
    When user enters the office "stdal"
    When user enters the extension "441234"
    When user enters the startdate "2020-12-10"
    When user enters the salary "1000000"
    And user clicks on the create button
    And search for the first name "fakename"
    Then verify the name fields contains first name "fakename"

  Scenario: TC03_Testing_the_data_tables_web_page_with_feature_date
    Given user is on the datatables page
    And user clicks on the new button
    When user enters the firstname "fakename3"
    When user enters the lastname "fakelast"
    When user enters the position "absddd"
    When user enters the office "stdal"
    When user enters the extension "441234"
    When user enters the startdate "2020-12-13"
    When user enters the salary "400000"
    And user clicks on the create button
    And search for the first name "fakename3"
    Then verify the name fields contains first name "fakename3"