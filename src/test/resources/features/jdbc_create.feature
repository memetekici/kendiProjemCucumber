@DBCreate
Feature: Create Data
  Background: User connected to the database
    Given user connects to the application database

    Scenario: Creating new Hotel
      And create a new hotel with the new data
      Then verify if the hotel is created