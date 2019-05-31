@javascript
Feature: create gratuity single outlet on backoffice

  Background:
    Given i navigate to BO dev mokapos

    Scenario Outline: Create 5 gratuity single outlet on backoffice
      Then i create grat with <grat name> & <amount> and check grat has created

      Examples:
        |grat name|amount|
        |1|1|
        |2|2|
        |3|3|
        |4|4|
        |5|5|

    Scenario Outline: Create 5 grat single outlet on backoffice
      Then i delete grat with <grat name> and check grat has deleted

      Examples:
        |grat name|
        |1|
        |2|
        |3|
        |4|
        |5|
