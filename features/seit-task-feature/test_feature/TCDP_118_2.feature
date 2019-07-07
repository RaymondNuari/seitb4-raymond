@javascript
Feature: As a seit candidate, i run TCDP 118 No 2

    Scenario: click record payment button
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice to check transaction
      Then i click record payment invoice button
