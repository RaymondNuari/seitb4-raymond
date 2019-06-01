@javascript
Feature: check liputan section

  Background:
    Given i navigate to mokapos homepage

    Scenario: check index press Section1
    When i click the business times
    Then i navigate to new tab BT
    Then i navigate to bussiness times page

    Scenario: check index press Section2
    When i click the KOMPAS
    Then i navigate to new tab KOMPAS
    Then i navigate to KOMPAS page

    Scenario: check index press Section3
    When i click the TECH CRUNCH
    Then i navigate to new tab TC
    Then i navigate to TECH CRUCNH page

    Scenario: check index press Section4
    When i click TECH Inasia
    Then i navigate to new tab TIA
    Then i navigate to techinasia page

    Scenario: check index press Section5
    When i click the jakarta post
    Then i navigate to new tab TJP
    Then i navigate to the jakarta post page
