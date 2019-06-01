@javascript
Feature: create item on backoffice

  Background:
    Given i navigate to BO dev mokapos

    Scenario Outline: Create 5 tax on backoffice
      Then i click library
      Then i go to taxes
      When i click create tax
      Then i input <tax name> on field tax name
      Then i input <amount> on field amoun
      And i click save tax button
      Then check <tax name> on taxes

    Examples:
      |tax name|amount|
      |1|1|
      |2|2|
      |3|3|
      |4|4|
      |5|5|

    Scenario Outline: delete 5 tax on Backoffice
    Then i click library
    Then i go to taxes
    When i click <tax name> on list taxes
    Then i click tax trash button
    When pop up shown i click delete button tax
    Then check <tax name> not in taxes

    Examples:
      |tax name|amount|
      |1|1|
      |2|2|
      |3|3|
      |4|4|
      |5|5|
