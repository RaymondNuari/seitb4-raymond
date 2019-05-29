@javascript
Feature: create item on backoffice

  Background:
    Given i navigate to BO dev mokapos

    Scenario Outline: Create 5 item on backoffice
      Then i click library
      Then i go to item library
      When i click create item
      Then i input <item name> on field item name
      Then i choose category
      Then i input <item price> on field price
      And i input <sku name> on field sku
      And i click save button
      Then check <item name> on library
      #Then i delete <item name> item on list

  Examples:
    |item name|item price|sku name|
    |1   |10000      |1|
    |2   |20000      |2|
    |3   |30000      |3|
    |4   |40000      |4|
    |5   |50000      |5|


    Scenario Outline: delete 5 item on Backoffice
    Then i click library
    Then i go to item library
    When i click <item name> on list
    Then i click trash button
    When pop up shown i click delete button
    Then check <item name> not in library

    Examples:
      |item name|item price|sku name|
      |1   |10000      |1|
      |2   |20000      |2|
      |3   |30000      |3|
      |4   |40000      |4|
      |5   |50000      |5|
