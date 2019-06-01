@javascript
Feature: create item on backoffice

  Background:
    Given i navigate to BO dev mokapos

    Scenario Outline: Create 5 Gratuity on backoffice
      Then i click library
      Then i go to Gratuity
      When i click create Gratuity
      Then i input <grat name> on field Gratuity name
      Then i input <amount> on field Gratuity amount
      And i click save grat button
      Then check <grat name> on Gratuity

    Examples:
      |grat name|amount|
      |1|1|
      |2|2|
      |3|3|
      |4|4|
      |5|5|

    Scenario Outline: delete 5 Gratuity on Backoffice
    Then i click library
    Then i go to Gratuity
    When i click <grat name> on list Gratuity
    Then i click grat trash button
    When pop up shown i click delete button grat
    Then check <grat name> not in Gratuity

    Examples:
      |grat name|amount|
      |1|1|
      |2|2|
      |3|3|
      |4|4|
      |5|5|
