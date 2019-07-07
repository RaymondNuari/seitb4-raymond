@javascript
Feature: As a seit candidate, i run TCDP 118 No 12

    Scenario: Make sure able to print invoice
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice to check transaction
      Then i do print invoice
