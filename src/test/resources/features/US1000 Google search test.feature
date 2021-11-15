@smoke
Feature: US1000 Google search test

  Background: User is on the google page
    Given user is on the google search

  Scenario: TC01 Verify iphone search
    And user search "school bag"
    Then verify the result has "school bag"

  Scenario: TC02 Verify tea pot search
    And user search "tea pot"
    Then verify the result has "tea pot"

  Scenario: TC03 Verify flower search
    And user search "flower"
    Then verify the result has "flower"

  Scenario: TC04 Verify bmw search
    And user search "bmw"
    Then verify the result has "bmw"