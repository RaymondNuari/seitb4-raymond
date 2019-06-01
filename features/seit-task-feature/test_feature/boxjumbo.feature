@javascript
Feature: check BoxJumbotron

  Background:
    Given i navigate to mokapos homepage

    Scenario: observe all at BoxJumbotron
    Then i should see heading
    And i should see paragraph
    And i should see backgroud image mokapos

    Scenario: Click button coba gratis
    When i click coba gratis sekarang button
    Then page navigate to register page

    Scenario: Click tonton video kami
    When i click tonton Video
    Then i should see moka videos
    Then i hold video for a time
    And i close the videos
