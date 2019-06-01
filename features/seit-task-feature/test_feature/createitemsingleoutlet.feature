@javascript
Feature: create item single outlet on backoffice

  Background:
    Given i navigate to BO dev mokapos

    Scenario Outline: Create 5 item single outlet on backoffice
      Then i create item with <item name> & <item price> & <sku name>


  Examples:
    |item name|item price|sku name|
    |1|10000|1|
    |2|20000|2|
    |3|30000|3|
    |4|40000|4|
    |5|50000|5|

    Scenario Outline: Delete 5 item single outlet on backoffice
      Then i delete item with <item name>

      Examples:
        |item name|
        |1|
        |2|
        |3|
        |4|
        |5|
