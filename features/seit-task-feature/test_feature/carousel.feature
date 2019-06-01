@javascript
Feature: check carousel section

  Background:
    Given i navigate to mokapos homepage

    Scenario: check testimonial slide cyclo
    When i click first point carousel
    Then i see content users MokaPOS
    Then i see company Logo
    And i see quote from owner
    And i see name & shop name
    And i see bussiness Type
    When i click photo Box
    Then i navigate to youtube
    And i hold for a while
    Then i close youtube
    And i click next slide
    Then i see New slide
    #nextstep
    Then i see company Logo next2
    And i see quote from owner next2
    And i see name & shop name next2
    And i see bussiness Type next2
    When i click photo Box next2
    Then i navigate to youtube next2
    And i hold for a while next2
    Then i close youtube next2
    And i click next slide next2
    Then i see New slide next2
