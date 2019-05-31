@javascript
Feature: create tax single outlet on backoffice

  Background:
    Given i navigate to BO dev mokapos

    Scenario Outline: Create 5 tax single outlet on backoffice
      Then i create tax with <tax name> & <amount> and check tax has created

      Examples:
        |tax name|amount|
        |1|1|
        |2|2|
        |3|3|
        |4|4|
        |5|5|

    Scenario Outline: Create 5 tax single outlet on backoffice
      Then i delete tax with <tax name> and check tax has deleted

      Examples:
        |tax name|
        |1|
        |2|
        |3|
        |4|
        |5|
