@javascript
Feature: As a seit candidate, i run TCDP 118 No 13

    Scenario: Make sure able to cancel invoice
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice to check transaction
      Then i do cancel invoice
