@dbedit
Feature: Update Hotel Data
  Background: User connected to the database
    Given user connects to the application database

    Scenario: Update Hotels
      And user updates Email as "thisupdateemail@update.com" whenIDHotel is 10
