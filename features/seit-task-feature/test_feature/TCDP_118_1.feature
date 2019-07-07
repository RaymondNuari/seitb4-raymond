@javascript
Feature: As a seit candidate, i run TCDP 118 No 1

  Scenario: click resend button
    Given i navigate to BO dev mokapos
    Then i create item for checkout
    Then i hit api checkout invoice
    When i go to Report invoice to check transaction
    Then i click resend button on report invoice
